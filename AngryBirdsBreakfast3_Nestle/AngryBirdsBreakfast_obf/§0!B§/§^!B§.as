package §0!B§
{
   import flash.geom.Rectangle;
   
   public class §^!B§
   {
      
      public static const VERSION:String = "1.2.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §^!B§)
         {
            VERSION = "1.2.0";
         }
      }
      
      private var §!a§:int = 0;
      
      private var §2!y§:int = 0;
      
      private var §3]§:int = 8;
      
      private var §-"0§:int = 0;
      
      private var §"!q§:int = 0;
      
      private var §-!L§:Array;
      
      private var §3!1§:Vector.<§-!8§>;
      
      private var §;$§:Vector.<§-!8§>;
      
      private var §[`§:Vector.<§-!8§>;
      
      private var §!p§:§-!8§;
      
      private var §@!w§:Vector.<§[!N§>;
      
      private var §6!#§:Vector.<§-!8§>;
      
      public function §^!B§(param1:int, param2:int, param3:int = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§-!L§ = [];
            while(true)
            {
               this.§3!1§ = new Vector.<§-!8§>();
               while(!_loc5_)
               {
                  this.§;$§ = new Vector.<§-!8§>();
                  while(_loc4_)
                  {
                     this.§[`§ = new Vector.<§-!8§>();
                     while(true)
                     {
                        this.§@!w§ = new Vector.<§[!N§>();
                     }
                     addr95:
                     if(_loc4_ || param3)
                     {
                        super();
                        do
                        {
                           this.§!p§ = new §-!8§(param1 + 1,param2 + 1,0,0);
                           do
                           {
                              this.reset(param1,param2,param3);
                           }
                           while(_loc5_ && param2);
                           
                        }
                        while(_loc5_);
                        
                        addr102:
                        if(!(_loc4_ || param3))
                        {
                           loop5:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr95);
                              }
                              addr110:
                              while(true)
                              {
                                 this.§6!#§ = new Vector.<§-!8§>();
                                 continue loop5;
                              }
                           }
                           §§goto(addr118);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function get §=;§() : int
      {
         return this.§3!1§.length;
      }
      
      public function get §6Q§() : int
      {
         return this.§-"0§;
      }
      
      public function get §#_§() : int
      {
         return this.§"!q§;
      }
      
      public function get §0!%§() : int
      {
         return this.§3]§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§3!1§.length)
            {
               this.§]&§(this.§3!1§.pop());
               continue;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!this.§;$§.length)
                  {
                     loop3:
                     while(true)
                     {
                        this.§!a§ = param1;
                        do
                        {
                           this.§2!y§ = param2;
                           loop5:
                           do
                           {
                              this.§-"0§ = 0;
                              loop6:
                              while(!(_loc4_ && param2))
                              {
                                 this.§"!q§ = 0;
                                 loop7:
                                 while(_loc5_ || param3)
                                 {
                                    this.§;$§[0] = this.§-!p§(0,0,this.§!a§,this.§2!y§);
                                    loop8:
                                    do
                                    {
                                       do
                                       {
                                          if(!this.§-!L§.length)
                                          {
                                             if(_loc5_)
                                             {
                                                this.§3]§ = param3;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          else
                                          {
                                             this.§>!^§(this.§-!L§.pop());
                                          }
                                          if(_loc4_ && this)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc5_ || param3)
                                          {
                                             §§goto(addr75);
                                          }
                                          continue loop7;
                                       }
                                       while(_loc5_ || param2);
                                       
                                       continue loop0;
                                    }
                                    while(!(_loc5_ || param2));
                                    
                                    if(_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           while(!_loc5_);
                           
                        }
                        while(!(_loc5_ || param2));
                        
                        return;
                     }
                  }
                  else
                  {
                     this.§]&§(this.§;$§.pop());
                  }
               }
            }
         }
      }
      
      public function §^!s§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§-!8§ = this.§3!1§[param1];
         if(!(_loc4_ && param2))
         {
            if(!param2)
            {
               return new Rectangle(_loc3_.x,_loc3_.y,_loc3_.width,_loc3_.height);
            }
            loop0:
            while(true)
            {
               param2.x = _loc3_.x;
               param2.y = _loc3_.y;
               loop1:
               while(true)
               {
                  param2.width = _loc3_.width;
                  do
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     param2.height = _loc3_.height;
                  }
                  while(!_loc5_);
                  
               }
            }
         }
         return param2;
      }
      
      public function §<"3§(param1:int) : int
      {
         var _loc2_:§-!8§ = this.§3!1§[param1];
         return _loc2_.id;
      }
      
      public function §;6§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[!N§ = this.§9K§(param1,param2,param3);
         if(_loc6_)
         {
            this.§-!L§.push(_loc4_);
         }
      }
      
      public function §65§(param1:Boolean = true) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§[!N§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§-!8§ = null;
         var _loc7_:§-!8§ = null;
         if(_loc8_)
         {
            if(param1)
            {
               if(!_loc9_)
               {
                  this.§-!L§.sortOn("width",Array.NUMERIC);
               }
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§-!L§);
            while(§§pop().length > 0)
            {
               §§push(this.§-!L§);
               if(_loc9_)
               {
                  continue;
               }
               _loc2_ = §§pop().pop() as §[!N§;
               if(!_loc9_)
               {
                  §§push(_loc2_.width);
                  if(_loc8_ || this)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc9_ && this))
                     {
                        _loc3_ = §§pop();
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(_loc2_.height);
                           if(!(_loc9_ && this))
                           {
                              §§push(int(§§pop()));
                              if(_loc9_ && param1)
                              {
                              }
                              addr125:
                              §§push(§§pop());
                              if(!_loc9_)
                              {
                                 _loc5_ = §§pop();
                                 addr129:
                                 §§push(0);
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc9_ && _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr148:
                                 _loc6_ = this.§;$§[_loc5_];
                                 (_loc7_ = this.§-!p§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
                                 if(_loc8_)
                                 {
                                    this.§&!<§(_loc7_,this.§;$§,this.§[`§);
                                    loop2:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(this.§[`§.length > 0)
                                          {
                                             this.§;$§[this.§;$§.length] = this.§[`§.pop();
                                             continue;
                                          }
                                          while(true)
                                          {
                                             this.§3!1§[this.§3!1§.length] = _loc7_;
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr277);
                           }
                           _loc4_ = §§pop();
                           if(!(_loc9_ && _loc2_))
                           {
                              addr106:
                              §§push(this.§8!o§(_loc3_,_loc4_));
                              if(!(_loc9_ && this))
                              {
                                 §§push(int(§§pop()));
                                 if(_loc8_ || param1)
                                 {
                                    §§goto(addr125);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr148);
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr106);
            }
            return this.§=;§;
         }
      }
      
      private function §!!Z§(param1:Vector.<§-!8§>) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§-!8§ = null;
         var _loc4_:* = 0;
         var _loc5_:§-!8§ = null;
         var _loc6_:§-!8§ = null;
         var _loc2_:* = int(param1.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1[_loc2_];
            if(_loc8_)
            {
               §§push(int(param1.length - 1));
               if(!_loc7_)
               {
                  _loc4_ = §§pop();
                  if(!_loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc4_);
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           loop3:
                           while(§§pop() >= §§pop())
                           {
                              §§push(_loc2_);
                              if(!_loc8_)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    continue loop3;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(!(_loc8_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       _loc5_ = param1[_loc4_];
                                       if(_loc8_)
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
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.y);
                                                               loop11:
                                                               while(!_loc7_)
                                                               {
                                                                  §§push(_loc5_.y);
                                                                  loop12:
                                                                  while(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§pop();
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                §§push(_loc3_.bottom);
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(_loc5_.bottom);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc8_ || param1))
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr216:
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                               if(_loc8_ || _loc2_)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  if(!(_loc8_ || _loc2_))
                                                                                                                  {
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               this.§]&§(_loc3_);
                                                                                                               addr112:
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  _loc6_ = param1.pop();
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(§§pop() < param1.length)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              param1[_loc2_] = _loc6_;
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 addr215:
                                                                                                                                 break loop3;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr215);
                                                                                                                     }
                                                                                                                     addr252:
                                                                                                                     _loc2_ = §§pop() - 1;
                                                                                                                     addr251:
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr215);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr180:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr180:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.right);
                                                                                                               break loop19;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr112);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                      }
                                                                                                      addr179:
                                                                                                   }
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             break loop17;
                                                                                          }
                                                                                          addr175:
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                    addr146:
                                                                                 }
                                                                                 §§goto(addr103);
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(_loc8_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr141);
                                                                              }
                                                                              §§goto(addr179);
                                                                           }
                                                                           addr141:
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr146);
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr175);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                                 §§goto(addr216);
                              }
                           }
                           addr248:
                           §§push(_loc2_);
                           if(!_loc7_)
                           {
                              §§goto(addr251);
                           }
                           §§goto(addr252);
                        }
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr56);
            }
            §§goto(addr248);
         }
      }
      
      private function §&!<§(param1:§-!8§, param2:Vector.<§-!8§>, param3:Vector.<§-!8§>) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§-!8§ = null;
         var _loc11_:§-!8§ = null;
         §§push(param1.x);
         if(_loc12_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1.y);
         if(_loc12_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param1.right);
         if(!_loc13_)
         {
            §§push(§§pop() + 1);
            if(_loc12_)
            {
               §§push(§§pop() + this.§3]§);
            }
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param1.bottom);
         if(!_loc13_)
         {
            §§push(§§pop() + 1);
            if(!(_loc13_ && param2))
            {
               §§push(§§pop() + this.§3]§);
            }
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:§-!8§ = null;
         if(_loc12_)
         {
            §§push(this.§3]§);
            if(!_loc13_)
            {
               if(§§pop() == 0)
               {
                  addr86:
                  _loc8_ = param1;
               }
               §§push(int(param2.length - 1));
            }
            var _loc9_:* = §§pop();
            loop0:
            while(_loc9_ >= 0)
            {
               _loc10_ = param2[_loc9_];
               if(!(_loc13_ && param2))
               {
                  §§push(_loc4_);
                  if(!(_loc13_ && param3))
                  {
                     §§push(_loc10_.right);
                     if(!_loc13_)
                     {
                        §§push(§§pop() >= §§pop());
                        loop1:
                        while(true)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc13_)
                                    {
                                       addr212:
                                       break;
                                       addr212:
                                       addr146:
                                       addr210:
                                       addr213:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc13_)
                                       {
                                          §§push(_loc10_.x);
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             addr153:
                                             do
                                             {
                                                if(_loc13_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             while(_loc12_);
                                             
                                             continue loop1;
                                          }
                                          addr152:
                                       }
                                       break;
                                    }
                                    if(§§pop() > _loc10_.y)
                                    {
                                       if(!(_loc13_ && param1))
                                       {
                                          break;
                                       }
                                       addr250:
                                       _loc11_ = param2.pop();
                                       if(!(_loc13_ && param1))
                                       {
                                          if(_loc9_ < param2.length)
                                          {
                                             if(!(_loc13_ && param2))
                                             {
                                                param2[_loc9_] = _loc11_;
                                             }
                                          }
                                       }
                                    }
                                    §§push(_loc9_);
                                    if(!_loc13_)
                                    {
                                       addr279:
                                       §§push(§§pop() - 1);
                                    }
                                    _loc9_ = §§pop();
                                    continue loop0;
                                 }
                                 addr221:
                                 if(!_loc8_)
                                 {
                                    if(_loc12_)
                                    {
                                       _loc8_ = this.§-!p§(param1.x,param1.y,param1.width + this.§3]§,param1.height + this.§3]§);
                                       addr243:
                                       this.§1!n§(_loc8_,_loc10_,param3);
                                       if(_loc13_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr243);
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop());
                                 do
                                 {
                                    if(!(_loc13_ && param3))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc13_ && param1))
                                          {
                                             §§pop();
                                             if(!_loc12_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc5_);
                                             if(_loc12_)
                                             {
                                                §§push(_loc10_.bottom);
                                                if(!_loc13_)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(_loc12_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      break loop7;
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr279);
                                          }
                                          break loop7;
                                       }
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 while(§§push(§§pop()), !(_loc12_ || param2));
                                 
                                 if(!§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       §§pop();
                                       if(_loc12_ || param2)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr146);
                                          }
                                          else
                                          {
                                             §§push(_loc7_);
                                             if(_loc12_)
                                             {
                                                §§goto(addr210);
                                             }
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr250);
                                    }
                                    break;
                                 }
                                 break;
                              }
                              §§goto(addr213);
                           }
                        }
                     }
                  }
                  §§goto(addr212);
               }
               §§goto(addr221);
            }
            if(_loc12_ || param1)
            {
               §§push(Boolean(_loc8_));
               if(!(_loc13_ && param2))
               {
                  if(§§pop())
                  {
                     if(!(_loc13_ && param2))
                     {
                        §§pop();
                        if(!(_loc13_ && param1))
                        {
                           §§push(_loc8_ == param1);
                           if(_loc12_)
                           {
                              addr350:
                              if(!§§pop())
                              {
                                 if(_loc12_)
                                 {
                                    this.§]&§(_loc8_);
                                    loop9:
                                    while(true)
                                    {
                                       addr322:
                                       while(true)
                                       {
                                          this.§!!Z§(param3);
                                          if(_loc12_ || this)
                                          {
                                             break loop9;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    return;
                                    addr356:
                                    addr333:
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr322);
                           }
                           §§goto(addr350);
                        }
                        §§goto(addr356);
                     }
                  }
               }
               §§goto(addr350);
            }
            §§goto(addr333);
         }
         §§goto(addr86);
      }
      
      private function §1!n§(param1:§-!8§, param2:§-!8§, param3:Vector.<§-!8§>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:int = 0;
         §§push(param2.right);
         if(_loc10_)
         {
            §§push(param1.right);
            if(_loc10_ || this)
            {
               addr34:
               §§push(int(§§pop() - §§pop()));
               §§push(int(§§pop() - §§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc10_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc10_)
                     {
                        param3[param3.length] = this.§-!p§(param1.right,param2.y,_loc5_,param2.height);
                        if(_loc9_)
                        {
                        }
                        addr60:
                        §§push(param1.x);
                        if(_loc10_)
                        {
                           addr71:
                           §§push(param2.x);
                           if(!_loc9_)
                           {
                              §§push(int(§§pop() - §§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(!(_loc9_ && param2))
                           {
                              §§push(0);
                              if(_loc10_ || param1)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc10_ || param3)
                                    {
                                       param3[param3.length] = this.§-!p§(param2.x,param2.y,_loc6_,param2.height);
                                       if(_loc10_)
                                       {
                                          _loc4_++;
                                       }
                                    }
                                 }
                                 §§push(param2.bottom);
                                 if(_loc10_ || this)
                                 {
                                    §§push(param1.bottom);
                                    if(!(_loc9_ && param1))
                                    {
                                       addr131:
                                       §§push(int(§§pop() - §§pop()));
                                       §§push(int(§§pop() - §§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(0);
                                       if(_loc10_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc10_ || param3)
                                             {
                                                param3[param3.length] = this.§-!p§(param2.x,param1.bottom,param2.width,_loc7_);
                                                if(_loc9_)
                                                {
                                                }
                                                addr172:
                                                §§push(param1.y);
                                                if(!_loc9_)
                                                {
                                                   addr176:
                                                   §§push(param2.y);
                                                   if(_loc10_ || param3)
                                                   {
                                                      addr187:
                                                      §§push(int(§§pop() - §§pop()));
                                                      §§push(int(§§pop() - §§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ || param3)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               param3[param3.length] = this.§-!p§(param2.x,param2.y,param2.width,_loc8_);
                                                               if(_loc10_)
                                                               {
                                                                  _loc4_++;
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     addr308:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc10_)
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
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             this.§]&§(param2);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr223:
                                                                                                   return;
                                                                                                   addr237:
                                                                                                }
                                                                                                addr266:
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   param3[param3.length] = param2;
                                                                                                   addr278:
                                                                                                   if(_loc10_ || param3)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop6:
                                                                                                   for(; !_loc9_; while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop6;
                                                                                                   })
                                                                                                   {
                                                                                                      §§push(param1.width);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2.width);
                                                                                                         addr291:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr306:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                                §§push(param1.height);
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.height);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               §§goto(addr294);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr305);
                                                                                                            }
                                                                                                         }
                                                                                                         addr259:
                                                                                                      }
                                                                                                      §§goto(addr291);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             §§goto(addr278);
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                       addr264:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§goto(addr187);
                                             }
                                             _loc4_++;
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr176);
                                 }
                              }
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr71);
                        §§push(§§pop());
                     }
                     _loc4_++;
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr34);
      }
      
      private function §8!o§(param1:int, param2:int) : int
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:§-!8§ = null;
         var _loc3_:§-!8§ = this.§!p§;
         var _loc4_:* = -1;
         §§push(param1);
         if(!_loc10_)
         {
            §§push(int(§§pop() + this.§3]§));
         }
         var _loc5_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && _loc3_))
         {
            §§push(int(§§pop() + this.§3]§));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int;
         §§push(_loc7_ = this.§;$§.length);
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ >= 0)
         {
            §§push((_loc9_ = this.§;$§[_loc8_]).x);
            if(_loc11_)
            {
               §§push(this.§-"0§);
               if(_loc11_ || param2)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc11_)
                  {
                     §§push(§§pop());
                     if(!(_loc10_ && this))
                     {
                        if(!§§pop())
                        {
                           if(!_loc10_)
                           {
                              §§pop();
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc9_.y);
                                 if(!_loc10_)
                                 {
                                    §§push(this.§"!q§);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc11_ || param2)
                                       {
                                          addr395:
                                          if(§§pop())
                                          {
                                             loop46:
                                             while(true)
                                             {
                                                §§push(_loc9_.x);
                                                if(_loc11_)
                                                {
                                                   addr400:
                                                   §§push(_loc3_.x);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc11_ || param2)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc9_.width);
                                                                           addr345:
                                                                           addr586:
                                                                           addr705:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop26;
                                                                           }
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.height);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc11_ || param2)
                                                                                                         {
                                                                                                            addr521:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc10_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc11_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc11_ || param2)
                                                                                                                                 {
                                                                                                                                    addr556:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          loop2:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.right);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr567:
                                                                                                                                                   §§push(this.§!a§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               loop19:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr581:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        addr583:
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           addr702:
                                                                                                                                                                           addr702:
                                                                                                                                                                           addr702:
                                                                                                                                                                           addr702:
                                                                                                                                                                           addr702:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop1;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           _loc3_ = _loc9_;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr702);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr654:
                                                                                                                                                                        loop6:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr655:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 loop11:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_.width);
                                                                                                                                                                                    if(_loc11_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_.height);
                                                                                                                                                                                       if(_loc11_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                addr623:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr626:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            addr627:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc11_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr636:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr634:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop15:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr694:
                                                                                                                                                                                                                           loop21:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_.height);
                                                                                                                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                          loop22:
                                                                                                                                                                                                                                          while(!_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop16:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc11_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop2;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                                                                                                                               addr686:
                                                                                                                                                                                                                                                               loop23:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                  addr646:
                                                                                                                                                                                                                                                                  addr709:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr648:
                                                                                                                                                                                                                                                                        §§push(_loc9_.width);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                           addr651:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop6;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr650:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc9_.width);
                                                                                                                                                                                                                                                                           addr690:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                              addr691:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop15;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr688:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop23;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr709:
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  if(_loc11_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr727:
                                                                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr730:
                                                                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr730);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr682:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr735);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr686);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr709);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr672:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr701:
                                                                                                                                                                                                                                 §§goto(addr702);
                                                                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr730);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr675);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr625:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr651);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr622:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr650);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr701);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr727);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr655:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr625);
                                                                                                                                                                        }
                                                                                                                                                                        addr654:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr691);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr635);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr702);
                                                                                                                                                   }
                                                                                                                                                   addr567:
                                                                                                                                                }
                                                                                                                                                §§goto(addr646);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr699:
                                                                                                                                          §§goto(addr701);
                                                                                                                                          §§push(_loc9_.width);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.height);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr699);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr727);
                                                                                                                                    }
                                                                                                                                    addr556:
                                                                                                                                 }
                                                                                                                                 break loop1;
                                                                                                                              }
                                                                                                                              §§goto(addr655);
                                                                                                                           }
                                                                                                                           §§goto(addr623);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr702);
                                                                                                                  }
                                                                                                                  §§goto(addr627);
                                                                                                               }
                                                                                                               §§goto(addr581);
                                                                                                            }
                                                                                                            addr521:
                                                                                                         }
                                                                                                         §§goto(addr702);
                                                                                                      }
                                                                                                      §§goto(addr567);
                                                                                                   }
                                                                                                   §§goto(addr701);
                                                                                                }
                                                                                                addr502:
                                                                                             }
                                                                                             §§goto(addr730);
                                                                                          }
                                                                                          addr600:
                                                                                       }
                                                                                       §§goto(addr694);
                                                                                    }
                                                                                    §§goto(addr686);
                                                                                 }
                                                                                 §§goto(addr636);
                                                                              }
                                                                              break;
                                                                           }
                                                                           break loop0;
                                                                           addr111:
                                                                           if(_loc10_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc9_.height);
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                addr156:
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      loop42:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_.right);
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(this.§!a§);
                                                                                                               if(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                     if(_loc11_ || param1)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              while(!§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc11_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr111);
                                                                                                                                          }
                                                                                                                                          §§goto(addr685);
                                                                                                                                       }
                                                                                                                                       §§goto(addr600);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr316:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc11_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop46;
                                                                                                                                                }
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      addr497:
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         break loop42;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr688);
                                                                                                                                                      §§push(param1);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr648);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr432:
                                                                                                                                                   §§push(_loc9_.width);
                                                                                                                                                   if(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         break loop25;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr521);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr672);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr456:
                                                                                                                                       }
                                                                                                                                       §§goto(addr686);
                                                                                                                                       addr316:
                                                                                                                                    }
                                                                                                                                    §§goto(addr709);
                                                                                                                                 }
                                                                                                                                 §§goto(addr691);
                                                                                                                              }
                                                                                                                              break loop25;
                                                                                                                              addr205:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr583);
                                                                                                                        addr201:
                                                                                                                     }
                                                                                                                     §§goto(addr702);
                                                                                                                  }
                                                                                                                  loop58:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     if(_loc11_ || param2)
                                                                                                                     {
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc11_ || this))
                                                                                                                           {
                                                                                                                              addr486:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc11_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr497);
                                                                                                                                    }
                                                                                                                                    §§goto(addr686);
                                                                                                                                 }
                                                                                                                                 §§goto(addr653);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                              {
                                                                                                                                 addr251:
                                                                                                                                 if(_loc11_ || param2)
                                                                                                                                 {
                                                                                                                                    addr258:
                                                                                                                                    if(_loc11_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop42;
                                                                                                                                          §§goto(addr156);
                                                                                                                                       }
                                                                                                                                       addr266:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                addr284:
                                                                                                                                                if(!(_loc11_ || param2))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop40;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!(_loc11_ || param2))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc9_.width);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.height);
                                                                                                                                                      continue loop58;
                                                                                                                                                   }
                                                                                                                                                   addr735:
                                                                                                                                                   return §§pop();
                                                                                                                                                   §§goto(addr251);
                                                                                                                                                }
                                                                                                                                                §§goto(addr556);
                                                                                                                                             }
                                                                                                                                             §§goto(addr654);
                                                                                                                                          }
                                                                                                                                          addr358:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.height);
                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr316);
                                                                                                                                                         }
                                                                                                                                                         addr315:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr690);
                                                                                                                                                   addr305:
                                                                                                                                                }
                                                                                                                                                §§goto(addr648);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr694);
                                                                                                                                          §§goto(addr258);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr358);
                                                                                                                                          }
                                                                                                                                          §§goto(addr315);
                                                                                                                                          §§goto(addr284);
                                                                                                                                       }
                                                                                                                                       addr274:
                                                                                                                                       addr357:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr292);
                                                                                                                              }
                                                                                                                              §§goto(addr521);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr201);
                                                                                                                           }
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                        §§goto(addr691);
                                                                                                                     }
                                                                                                                     §§goto(addr626);
                                                                                                                  }
                                                                                                                  addr226:
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr648);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_.width);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§goto(addr274);
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                   }
                                                                                                   §§push(_loc9_.height);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr432);
                                                                                                   }
                                                                                                   §§goto(addr727);
                                                                                                }
                                                                                                §§goto(addr266);
                                                                                             }
                                                                                             §§goto(addr643);
                                                                                          }
                                                                                          §§goto(addr626);
                                                                                       }
                                                                                       break loop25;
                                                                                    }
                                                                                    §§goto(addr634);
                                                                                 }
                                                                                 §§goto(addr626);
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                           §§goto(addr690);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  addr356:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr357);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr654);
                                                         }
                                                         break;
                                                         §§goto(addr400);
                                                      }
                                                      addr444:
                                                      if(§§pop())
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            break loop0;
                                                         }
                                                         §§goto(addr556);
                                                      }
                                                      else
                                                      {
                                                         _loc3_ = _loc9_;
                                                         §§goto(addr456);
                                                      }
                                                      addr409:
                                                   }
                                                   §§goto(addr622);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc9_.x);
                                             if(!(_loc10_ && param2))
                                             {
                                                §§push(_loc3_.x);
                                                if(_loc11_ || this)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr654);
                                                   }
                                                   §§goto(addr655);
                                                }
                                                §§goto(addr567);
                                             }
                                          }
                                          §§goto(addr502);
                                       }
                                       §§goto(addr586);
                                    }
                                    §§goto(addr409);
                                 }
                                 §§goto(addr682);
                              }
                              §§goto(addr705);
                           }
                           §§goto(addr356);
                        }
                        §§goto(addr395);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr444);
               }
               §§goto(addr226);
            }
            §§goto(addr305);
         }
         §§goto(addr735);
         §§push(_loc4_);
      }
      
      private function §-!p§(param1:int, param2:int, param3:int, param4:int) : §-!8§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§-!8§ = null;
         if(!_loc6_)
         {
            if(this.§6!#§.length <= 0)
            {
               return new §-!8§(param1,param2,param3,param4);
            }
         }
         (_loc5_ = this.§6!#§.pop()).x = param1;
         if(!(_loc6_ && param1))
         {
            _loc5_.y = param2;
            loop0:
            do
            {
               _loc5_.width = param3;
               while(true)
               {
                  _loc5_.height = param4;
                  while(!_loc6_)
                  {
                     _loc5_.right = param1 + param3;
                     if(_loc7_ || param1)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_.bottom = param2 + param4, _loc6_);
            
         }
         return _loc5_;
      }
      
      private function §]&§(param1:§-!8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6!#§[this.§6!#§.length] = param1;
         }
      }
      
      private function §9K§(param1:int, param2:int, param3:int) : §[!N§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[!N§ = null;
         if(!_loc5_)
         {
            if(this.§@!w§.length > 0)
            {
               (_loc4_ = this.§@!w§.pop()).width = param1;
               §§goto(addr27);
            }
            §§goto(addr76);
         }
         addr27:
         if(_loc6_)
         {
            _loc4_.height = param2;
            while(true)
            {
            }
            addr75:
         }
         else if(true)
         {
            addr76:
            return new §[!N§(param1,param2,param3);
         }
         while(true)
         {
            _loc4_.id = param3;
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr75);
         }
         return _loc4_;
      }
      
      private function §>!^§(param1:§[!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@!w§[this.§@!w§.length] = param1;
         }
      }
   }
}
