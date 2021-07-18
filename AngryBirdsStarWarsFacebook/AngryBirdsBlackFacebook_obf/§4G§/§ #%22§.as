package §4G§
{
   import flash.geom.Rectangle;
   
   public class § #"§
   {
      
      public static const VERSION:String = "1.2.0";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "1.2.0";
         }
      }
      
      private var §6"?§:int = 0;
      
      private var §[!4§:int = 0;
      
      private var §%"Q§:int = 8;
      
      private var §+##§:int = 0;
      
      private var §4"V§:int = 0;
      
      private var §#"u§:Array;
      
      private var §]!L§:Vector.<§'!m§>;
      
      private var §%!'§:Vector.<§'!m§>;
      
      private var §4#a§:Vector.<§'!m§>;
      
      private var §`!y§:§'!m§;
      
      private var §5"6§:Vector.<§3z§>;
      
      private var §5!#§:Vector.<§'!m§>;
      
      public function § #"§(param1:int, param2:int, param3:int = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§#"u§ = [];
            while(true)
            {
               this.§]!L§ = new Vector.<§'!m§>();
               while(_loc5_)
               {
                  this.§%!'§ = new Vector.<§'!m§>();
                  loop2:
                  while(true)
                  {
                     this.§4#a§ = new Vector.<§'!m§>();
                     addr116:
                     while(true)
                     {
                        this.§5"6§ = new Vector.<§3z§>();
                        continue loop2;
                     }
                  }
                  addr78:
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  this.§`!y§ = new §'!m§(param1 + 1,param2 + 1,0,0);
                  while(_loc5_ || this)
                  {
                     this.reset(param1,param2,param3);
                     if(!(_loc5_ || param2))
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr116);
                        }
                        return;
                        addr41:
                     }
                     §§goto(addr101);
                  }
                  loop6:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr78);
                     }
                     else
                     {
                        while(true)
                        {
                           super();
                           continue loop6;
                        }
                        §§goto(addr41);
                        addr93:
                     }
                  }
                  addr55:
               }
            }
         }
         §§goto(addr93);
      }
      
      public function get §'"u§() : int
      {
         return this.§]!L§.length;
      }
      
      public function get §@#E§() : int
      {
         return this.§+##§;
      }
      
      public function get §9Q§() : int
      {
         return this.§4"V§;
      }
      
      public function get §,"9§() : int
      {
         return this.§%"Q§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§]!L§.length)
            {
               this.§@!S§(this.§]!L§.pop());
               continue;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!this.§%!'§.length)
                  {
                     loop3:
                     while(!(_loc5_ && this))
                     {
                        this.§6"?§ = param1;
                        loop4:
                        while(true)
                        {
                           this.§[!4§ = param2;
                           addr115:
                           while(!_loc5_)
                           {
                              this.§+##§ = 0;
                              loop6:
                              while(!_loc5_)
                              {
                                 this.§4"V§ = 0;
                                 loop7:
                                 do
                                 {
                                    this.§%!'§[0] = this.§%"m§(0,0,this.§6"?§,this.§[!4§);
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                       addr35:
                                       if(_loc4_ || this)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 while(!(_loc4_ || param2));
                                 
                                 if(_loc4_ || param2)
                                 {
                                    return;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  else
                  {
                     this.§@!S§(this.§%!'§.pop());
                  }
               }
            }
         }
      }
      
      public function §^E§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'!m§ = this.§]!L§[param1];
         if(_loc4_)
         {
            if(!param2)
            {
               return new Rectangle(_loc3_.x,_loc3_.y,_loc3_.width,_loc3_.height);
            }
            while(true)
            {
               param2.x = _loc3_.x;
               §§goto(addr102);
            }
         }
         addr102:
         while(true)
         {
            param2.y = _loc3_.y;
            if(!(_loc5_ && param2))
            {
               param2.width = _loc3_.width;
               param2.height = _loc3_.height;
               if(_loc4_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
         return param2;
      }
      
      public function §3"w§(param1:int) : int
      {
         var _loc2_:§'!m§ = this.§]!L§[param1];
         return _loc2_.id;
      }
      
      public function §&"M§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3z§ = this.§]!k§(param1,param2,param3);
         if(!(_loc6_ && param2))
         {
            this.§#"u§.push(_loc4_);
         }
      }
      
      public function §+!_§(param1:Boolean = true) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§3z§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§'!m§ = null;
         var _loc7_:§'!m§ = null;
         if(_loc9_)
         {
            if(param1)
            {
               if(!(_loc8_ && param1))
               {
                  this.§#"u§.sortOn("width",Array.NUMERIC);
               }
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§#"u§);
            while(§§pop().length > 0)
            {
               §§push(this.§#"u§);
               if(_loc8_)
               {
                  continue;
               }
               _loc2_ = §§pop().pop() as §3z§;
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc2_.width);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                     if(_loc9_ || _loc2_)
                     {
                        _loc3_ = §§pop();
                        if(_loc9_)
                        {
                           addr87:
                           §§push(_loc2_.height);
                           if(!_loc8_)
                           {
                              addr91:
                              §§push(int(§§pop()));
                              if(!_loc8_)
                              {
                                 addr94:
                                 _loc4_ = §§pop();
                                 if(!(_loc9_ || this))
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§'m§(_loc3_,_loc4_));
                                 if(!(_loc8_ && param1))
                                 {
                                    addr113:
                                    §§push(int(§§pop()));
                                    if(!_loc9_)
                                    {
                                    }
                                    addr120:
                                    addr121:
                                    if(§§pop() >= 0)
                                    {
                                       if(!_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       _loc6_ = this.§%!'§[_loc5_];
                                       (_loc7_ = this.§%"m§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
                                       addr124:
                                       if(!_loc8_)
                                       {
                                          this.§]!I§(_loc7_,this.§%!'§,this.§4#a§);
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(this.§4#a§.length <= 0)
                                             {
                                                if(_loc9_)
                                                {
                                                   this.§]!L§[this.§]!L§.length] = _loc7_;
                                                }
                                                loop4:
                                                for(; !_loc8_; while(!(_loc8_ && _loc2_))
                                                {
                                                   this.§+##§ = _loc7_.right;
                                                   §§goto(addr218);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc7_.right);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(this.§+##§);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               continue loop4;
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_.bottom);
                                                               if(_loc8_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(this.§4"V§);
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc8_ && _loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr174:
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     this.§4"V§ = _loc7_.bottom;
                                                                     continue loop2;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               addr218:
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                                  §§goto(addr174);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.§%!'§[this.§%!'§.length] = this.§4#a§.pop();
                                             }
                                          }
                                       }
                                    }
                                    this.§`!@§(_loc2_);
                                    continue loop0;
                                 }
                                 §§push(§§pop());
                                 if(_loc9_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr120);
                                 }
                                 §§goto(addr121);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr94);
               }
               §§goto(addr87);
            }
            return this.§'"u§;
         }
      }
      
      private function §;p§(param1:Vector.<§'!m§>) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§'!m§ = null;
         var _loc4_:* = 0;
         var _loc5_:§'!m§ = null;
         var _loc6_:§'!m§ = null;
         var _loc2_:int = param1.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1[_loc2_];
            if(_loc8_ || param1)
            {
               §§push(int(param1.length - 1));
               if(!(_loc7_ && this))
               {
                  _loc4_ = §§pop();
                  if(!_loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 break loop1;
                              }
                              §§push(_loc2_);
                              if(!_loc8_)
                              {
                                 continue loop1;
                              }
                              §§push(_loc4_);
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    addr82:
                                    while(true)
                                    {
                                       _loc5_ = param1[_loc4_];
                                       if(!_loc7_)
                                       {
                                          §§push(_loc3_.x);
                                          while(true)
                                          {
                                             §§push(_loc5_.x);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr223:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr224:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.y);
                                                               addr192:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.y);
                                                                  addr194:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ || _loc3_))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop() >= §§pop());
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr223:
                                                      }
                                                      while(true)
                                                      {
                                                         addr203:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr223);
                                             }
                                             while(_loc8_ || _loc3_)
                                             {
                                                §§goto(addr165);
                                                §§push(_loc5_.right);
                                             }
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                    addr82:
                                 }
                                 break;
                              }
                              §§goto(addr246);
                           }
                           addr278:
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§goto(addr281);
                           }
                           §§goto(addr282);
                        }
                     }
                     §§goto(addr278);
                  }
                  §§goto(addr82);
               }
               §§goto(addr249);
            }
            §§goto(addr82);
         }
      }
      
      private function §]!I§(param1:§'!m§, param2:Vector.<§'!m§>, param3:Vector.<§'!m§>) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§'!m§ = null;
         var _loc11_:§'!m§ = null;
         §§push(param1.x);
         if(_loc13_ || this)
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
         if(_loc13_)
         {
            §§push(§§pop() + 1);
            if(!(_loc12_ && param1))
            {
               §§push(§§pop() + this.§%"Q§);
            }
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param1.bottom);
         if(_loc13_)
         {
            §§push(§§pop() + 1);
            if(!_loc12_)
            {
               §§push(§§pop() + this.§%"Q§);
            }
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:§'!m§ = null;
         if(!(_loc12_ && param1))
         {
            §§push(this.§%"Q§);
            if(_loc13_ || param1)
            {
               if(§§pop() == 0)
               {
                  addr97:
                  _loc8_ = param1;
               }
               §§push(int(param2.length - 1));
            }
            var _loc9_:* = §§pop();
            loop0:
            while(_loc9_ >= 0)
            {
               _loc10_ = param2[_loc9_];
               if(_loc13_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc13_)
                  {
                     §§push(_loc10_.right);
                     if(!_loc12_)
                     {
                        §§push(§§pop() >= §§pop());
                        while(true)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc13_)
                                 {
                                    §§pop();
                                    if(!(_loc13_ || this))
                                    {
                                       continue loop0;
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(_loc13_)
                                       {
                                          §§push(_loc10_.x);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             if(_loc13_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   do
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(!_loc12_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(_loc10_.bottom);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!(_loc12_ && param3))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr157:
                                                                  §§pop();
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr296:
                                                                     §§push(_loc7_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr228:
                                                                        addr226:
                                                                        addr229:
                                                                        if(§§pop() > _loc10_.y)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              _loc8_ = this.§%"m§(param1.x,param1.y,param1.width + this.§%"Q§,param1.height + this.§%"Q§);
                                                                           }
                                                                           this.§^#B§(_loc8_,_loc10_,param3);
                                                                           if(_loc13_ || param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§push(_loc9_);
                                                                        if(!(_loc12_ && param3))
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                     }
                                                                     _loc9_ = §§pop();
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         break;
                                                      }
                                                      _loc11_ = param2.pop();
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc9_ < param2.length)
                                                         {
                                                            if(!(_loc12_ && param2))
                                                            {
                                                               addr283:
                                                               param2[_loc9_] = _loc11_;
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   while(§§push(§§pop()), !(_loc13_ || param3));
                                                   
                                                   if(!§§pop())
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                }
                                                addr193:
                                             }
                                          }
                                          §§goto(addr228);
                                       }
                                       break;
                                    }
                                    §§goto(addr296);
                                    §§push(§§pop() - 1);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr193);
                           }
                        }
                     }
                     §§goto(addr228);
                  }
                  §§goto(addr295);
               }
               §§goto(addr236);
            }
            if(!(_loc12_ && param1))
            {
               §§push(Boolean(_loc8_));
               if(_loc13_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc13_ || this)
                     {
                        §§goto(addr325);
                     }
                  }
                  §§goto(addr361);
               }
               addr325:
               §§pop();
               if(!_loc12_)
               {
                  §§push(_loc8_ == param1);
                  if(!_loc12_)
                  {
                     addr361:
                     if(!§§pop())
                     {
                        if(!_loc12_)
                        {
                           this.§@!S§(_loc8_);
                           addr367:
                           while(true)
                           {
                           }
                           addr367:
                        }
                        §§goto(addr367);
                     }
                     while(true)
                     {
                        this.§;p§(param3);
                        if(_loc13_ || param2)
                        {
                           break;
                        }
                        §§goto(addr367);
                     }
                  }
                  §§goto(addr361);
               }
               return;
            }
            §§goto(addr367);
         }
         §§goto(addr97);
      }
      
      private function §^#B§(param1:§'!m§, param2:§'!m§, param3:Vector.<§'!m§>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:int = 0;
         §§push(param2.right);
         if(!(_loc9_ && param3))
         {
            §§push(param1.right);
            if(_loc10_)
            {
               addr34:
               §§push(int(§§pop() - §§pop()));
               §§push(int(§§pop() - §§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc9_ && param3))
            {
               §§push(0);
               if(_loc10_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc9_)
                     {
                        param3[param3.length] = this.§%"m§(param1.right,param2.y,_loc5_,param2.height);
                        if(_loc9_)
                        {
                        }
                        addr65:
                        §§push(param1.x);
                        if(!(_loc9_ && param2))
                        {
                           addr86:
                           §§push(param2.x);
                           if(!(_loc9_ && param1))
                           {
                              §§push(int(§§pop() - §§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(_loc10_ || param1)
                           {
                              §§push(0);
                              if(_loc10_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       param3[param3.length] = this.§%"m§(param2.x,param2.y,_loc6_,param2.height);
                                       if(!(_loc9_ && param1))
                                       {
                                          _loc4_++;
                                       }
                                    }
                                 }
                                 §§push(param2.bottom);
                                 if(!(_loc9_ && this))
                                 {
                                    addr130:
                                    §§push(param1.bottom);
                                    if(_loc10_)
                                    {
                                       addr136:
                                       §§push(int(§§pop() - §§pop()));
                                       §§push(int(§§pop() - §§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(0);
                                       if(_loc10_ || param1)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                param3[param3.length] = this.§%"m§(param2.x,param1.bottom,param2.width,_loc7_);
                                                if(!(_loc9_ && param1))
                                                {
                                                   _loc4_++;
                                                }
                                             }
                                          }
                                          §§push(param1.y);
                                          if(_loc10_ || param2)
                                          {
                                             §§push(param2.y);
                                             if(_loc10_ || param3)
                                             {
                                                addr207:
                                                §§push(int(§§pop() - §§pop()));
                                                §§push(int(§§pop() - §§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!_loc9_)
                                             {
                                                §§push(0);
                                                if(_loc10_ || param1)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         param3[param3.length] = this.§%"m§(param2.x,param2.y,param2.width,_loc8_);
                                                         if(_loc10_)
                                                         {
                                                            _loc4_++;
                                                            loop0:
                                                            while(true)
                                                            {
                                                               addr362:
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
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.width);
                                                                                       addr326:
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2.width);
                                                                                          addr328:
                                                                                          while(!_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                addr331:
                                                                                                while(_loc9_ && param3)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                if(_loc9_ && param3)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr349:
                                                                                                   §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.height);
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   addr243:
                                                                                                   return;
                                                                                                   addr304:
                                                                                                   addr350:
                                                                                                   addr322:
                                                                                                   addr247:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr304);
                                                                                                }
                                                                                                this.§@!S§(param2);
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                   §§goto(addr243);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr242:
                                                         }
                                                         param3[param3.length] = param2;
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr362);
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr326);
                                          }
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr86);
                        §§push(§§pop());
                     }
                     _loc4_++;
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr86);
         }
         §§goto(addr34);
      }
      
      private function §'m§(param1:int, param2:int) : int
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:§'!m§ = null;
         var _loc3_:§'!m§ = this.§`!y§;
         var _loc4_:* = -1;
         §§push(param1);
         if(_loc11_ || this)
         {
            §§push(int(§§pop() + this.§%"Q§));
         }
         var _loc5_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && param1))
         {
            §§push(int(§§pop() + this.§%"Q§));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int;
         §§push(_loc7_ = this.§%!'§.length);
         if(!_loc10_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ >= 0)
         {
            §§push((_loc9_ = this.§%!'§[_loc8_]).x);
            if(_loc11_ || param1)
            {
               §§push(this.§+##§);
               if(!(_loc10_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc11_)
                     {
                        if(!§§pop())
                        {
                           if(_loc11_)
                           {
                              §§pop();
                              if(_loc11_ || param2)
                              {
                                 §§push(_loc9_.y);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§4"V§);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc11_)
                                       {
                                          loop41:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(_loc9_.x);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§goto(addr446);
                                                }
                                                break;
                                             }
                                             loop42:
                                             while(true)
                                             {
                                                §§push(_loc9_.x);
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc3_.x);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() < §§pop());
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc11_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(_loc9_.width);
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.height);
                                                                                                   addr307:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      addr308:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr309:
                                                                                                         addr436:
                                                                                                         while(§§pop())
                                                                                                         {
                                                                                                            loop36:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr446:
                                                                                                                     §§push(_loc3_.x);
                                                                                                                     if(_loc11_ || param1)
                                                                                                                     {
                                                                                                                        addr455:
                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           addr458:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc11_ || param2)
                                                                                                                                 {
                                                                                                                                    addr469:
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(param1);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.width);
                                                                                                                                          if(_loc10_ && param2)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr732:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr734:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param2);
                                                                                                                                                         addr709:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.height);
                                                                                                                                                            addr711:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr733:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr713:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            addr715:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  break loop36;
                                                                                                                                                               }
                                                                                                                                                               addr777:
                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr780);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr785:
                                                                                                                                                               }
                                                                                                                                                               addr785:
                                                                                                                                                               addr785:
                                                                                                                                                               addr785:
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr714:
                                                                                                                                                      }
                                                                                                                                                      addr759:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr777);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr780);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr477:
                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             break loop41;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr746:
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       addr472:
                                                                                                                                    }
                                                                                                                                    loop3:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          loop4:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.right);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(_loc11_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr594:
                                                                                                                                                      §§push(this.§6"?§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc11_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc11_ || this)
                                                                                                                                                               {
                                                                                                                                                                  break loop1;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr711);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  addr703:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  loop25:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr705:
                                                                                                                                                                        loop26:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr706:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_.width);
                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr667:
                                                                                                                                                                                 §§push(_loc9_.height);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr669:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr777);
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr705:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr672:
                                                                                                                                                                           loop45:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop7:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr621:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc10_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop29;
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                addr526:
                                                                                                                                                                                                if(_loc10_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr544:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(!(_loc10_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr706);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr688);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr755);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr713);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr780);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr733);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr618:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr713);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr731);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr747);
                                                                                                                                                                                          addr503:
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!(_loc11_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc11_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc10_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr526);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr747);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr732);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc11_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc10_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr687:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr688:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr687:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr705);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr747:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr755:
                                                                                                                                                                                       break loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc3_ = _loc9_;
                                                                                                                                                                                 §§goto(addr759);
                                                                                                                                                                              }
                                                                                                                                                                              addr780:
                                                                                                                                                                              return §§pop();
                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr704:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr747);
                                                                                                                                                            }
                                                                                                                                                            addr700:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr669);
                                                                                                                                                         addr493:
                                                                                                                                                         if(!(_loc11_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr503);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr747);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr709);
                                                                                                                                                }
                                                                                                                                                §§goto(addr715);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr785);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.height);
                                                                                                                                          if(!(_loc10_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr746);
                                                                                                                                             §§push(_loc9_.width);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr777);
                                                                                                                                    }
                                                                                                                                    addr573:
                                                                                                                                 }
                                                                                                                                 §§goto(addr747);
                                                                                                                              }
                                                                                                                              §§goto(addr731);
                                                                                                                           }
                                                                                                                           §§goto(addr704);
                                                                                                                        }
                                                                                                                        §§goto(addr703);
                                                                                                                     }
                                                                                                                     §§goto(addr746);
                                                                                                                  }
                                                                                                                  §§goto(addr755);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               §§goto(addr719);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr759);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr573);
                                                                                          }
                                                                                          §§goto(addr731);
                                                                                       }
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                 }
                                                                                 addr348:
                                                                              }
                                                                              break;
                                                                              if(!(_loc11_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§goto(addr246);
                                                                              }
                                                                              §§goto(addr424);
                                                                           }
                                                                           addr639:
                                                                           §§pop();
                                                                           if(!(_loc11_ || _loc3_))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 §§goto(addr661);
                                                                              }
                                                                              §§goto(addr734);
                                                                           }
                                                                           §§goto(addr714);
                                                                        }
                                                                        §§goto(addr785);
                                                                     }
                                                                     addr407:
                                                                  }
                                                                  §§goto(addr432);
                                                               }
                                                               §§goto(addr705);
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr672);
                                                      }
                                                      §§goto(addr639);
                                                   }
                                                   §§goto(addr421);
                                                }
                                                §§goto(addr594);
                                             }
                                             §§goto(addr446);
                                          }
                                          while(true)
                                          {
                                             §§push(_loc9_.height);
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§goto(addr493);
                                             }
                                             §§goto(addr746);
                                          }
                                          addr371:
                                       }
                                       §§goto(addr458);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr618);
                                 }
                              }
                              §§goto(addr407);
                           }
                           §§goto(addr687);
                        }
                        §§goto(addr371);
                     }
                     §§goto(addr672);
                  }
                  §§goto(addr285);
               }
               §§goto(addr177);
            }
            §§goto(addr718);
         }
         §§goto(addr785);
         §§push(_loc4_);
      }
      
      private function §%"m§(param1:int, param2:int, param3:int, param4:int) : §'!m§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§'!m§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§5!#§.length > 0)
            {
               addr32:
               (_loc5_ = this.§5!#§.pop()).x = param1;
               if(_loc7_ || param1)
               {
                  _loc5_.y = param2;
                  do
                  {
                     _loc5_.width = param3;
                  }
                  while(!(_loc7_ || param3));
                  
                  _loc5_.height = param4;
                  while(true)
                  {
                     _loc5_.right = param1 + param3;
                     loop2:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           _loc5_.bottom = param2 + param4;
                           if(_loc7_ || param2)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return _loc5_;
                     }
                  }
               }
               else if(true)
               {
                  §§goto(addr131);
               }
               §§goto(addr77);
            }
            addr131:
            return new §'!m§(param1,param2,param3,param4);
         }
         §§goto(addr32);
      }
      
      private function §@!S§(param1:§'!m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!#§[this.§5!#§.length] = param1;
         }
      }
      
      private function §]!k§(param1:int, param2:int, param3:int) : §3z§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3z§ = null;
         if(!_loc6_)
         {
            if(this.§5"6§.length > 0)
            {
               addr26:
               (_loc4_ = this.§5"6§.pop()).width = param1;
               if(_loc5_)
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
                        if(_loc5_ || param3)
                        {
                           break;
                        }
                        addr84:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     return _loc4_;
                  }
                  §§goto(addr85);
               }
               §§goto(addr84);
            }
            addr85:
            return new §3z§(param1,param2,param3);
         }
         §§goto(addr26);
      }
      
      private function §`!@§(param1:§3z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5"6§[this.§5"6§.length] = param1;
         }
      }
   }
}
