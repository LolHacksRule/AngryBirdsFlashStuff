package §1"%§
{
   import flash.geom.Rectangle;
   
   public class §?#§
   {
      
      public static const VERSION:String = "1.2.0";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §?#§))
         {
            VERSION = "1.2.0";
         }
      }
      
      private var §<`§:int = 0;
      
      private var §#!A§:int = 0;
      
      private var §!!7§:int = 8;
      
      private var §-v§:int = 0;
      
      private var §%!h§:int = 0;
      
      private var §0i§:Array;
      
      private var §7!G§:Vector.<§!R§>;
      
      private var §61§:Vector.<§!R§>;
      
      private var §,!K§:Vector.<§!R§>;
      
      private var §@R§:§!R§;
      
      private var §%p§:Vector.<§6r§>;
      
      private var §"%§:Vector.<§!R§>;
      
      public function §?#§(param1:int, param2:int, param3:int = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§0i§ = [];
         }
         loop0:
         while(true)
         {
            this.§7!G§ = new Vector.<§!R§>();
            loop1:
            while(true)
            {
               this.§61§ = new Vector.<§!R§>();
               while(true)
               {
                  this.§,!K§ = new Vector.<§!R§>();
                  while(_loc5_ || param2)
                  {
                     if(!_loc4_)
                     {
                        this.§%p§ = new Vector.<§6r§>();
                        loop4:
                        for(; _loc5_ || this; if(_loc4_ && this)
                        {
                           continue;
                        },§§goto(addr82))
                        {
                           this.§"%§ = new Vector.<§!R§>();
                           loop5:
                           while(true)
                           {
                              super();
                              loop6:
                              while(!_loc4_)
                              {
                                 this.§@R§ = new §!R§(param1 + 1,param2 + 1,0,0);
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                    addr82:
                                    this.reset(param1,param2,param3);
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §+I§() : int
      {
         return this.§7!G§.length;
      }
      
      public function get §9!J§() : int
      {
         return this.§-v§;
      }
      
      public function get §&;§() : int
      {
         return this.§%!h§;
      }
      
      public function get §-!c§() : int
      {
         return this.§!!7§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§7!G§.length)
            {
               this.§5!X§(this.§7!G§.pop());
               continue;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!this.§61§.length)
                  {
                     if(_loc5_ || this)
                     {
                        this.§<`§ = param1;
                     }
                     loop3:
                     do
                     {
                        this.§#!A§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§-v§ = 0;
                           loop5:
                           do
                           {
                              this.§%!h§ = 0;
                              loop6:
                              while(_loc5_)
                              {
                                 this.§61§[0] = this.§&,§(0,0,this.§<`§,this.§#!A§);
                                 do
                                 {
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(!this.§0i§.length)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(!_loc4_)
                                             {
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop6;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                this.§!!7§ = param3;
                                                §§goto(addr43);
                                                continue loop6;
                                             }
                                          }
                                          else
                                          {
                                             this.§1!V§(this.§0i§.pop());
                                          }
                                          if(_loc5_ || param3)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 while(_loc4_ && this);
                                 
                                 continue loop5;
                              }
                           }
                           while(_loc4_);
                           
                           continue loop3;
                        }
                     }
                     while(_loc4_);
                     
                     return;
                  }
                  this.§5!X§(this.§61§.pop());
               }
            }
         }
      }
      
      public function §6!'§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!R§ = this.§7!G§[param1];
         if(_loc5_ || param1)
         {
            if(!param2)
            {
               return new Rectangle(_loc3_.x,_loc3_.y,_loc3_.width,_loc3_.height);
            }
            loop0:
            do
            {
               param2.x = _loc3_.x;
               while(true)
               {
                  param2.y = _loc3_.y;
                  while(!(_loc4_ && this))
                  {
                     param2.width = _loc3_.width;
                     while(!_loc4_)
                     {
                        param2.height = _loc3_.height;
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(_loc4_ && _loc3_);
            
         }
         return param2;
      }
      
      public function §<P§(param1:int) : int
      {
         var _loc2_:§!R§ = this.§7!G§[param1];
         return _loc2_.id;
      }
      
      public function §&!`§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§6r§ = this.§1R§(param1,param2,param3);
         if(!_loc5_)
         {
            this.§0i§.push(_loc4_);
         }
      }
      
      public function §6!_§(param1:Boolean = true) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§6r§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§!R§ = null;
         var _loc7_:§!R§ = null;
         if(!(_loc9_ && this))
         {
            if(param1)
            {
               if(_loc8_)
               {
                  addr42:
                  this.§0i§.sortOn("width",Array.NUMERIC);
               }
            }
            loop0:
            while(true)
            {
               §§push(this.§0i§);
               while(§§pop().length > 0)
               {
                  §§push(this.§0i§);
                  if(!_loc8_)
                  {
                     continue;
                  }
                  _loc2_ = §§pop().pop() as §6r§;
                  if(_loc8_ || _loc3_)
                  {
                     §§push(_loc2_.width);
                     if(!_loc9_)
                     {
                        §§push(int(§§pop()));
                        if(_loc8_ || _loc3_)
                        {
                           _loc3_ = §§pop();
                           if(!(_loc9_ && this))
                           {
                              §§push(_loc2_.height);
                              if(!_loc9_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    addr96:
                                    §§push(this.§@!S§(_loc3_,_loc4_));
                                    if(_loc9_ && this)
                                    {
                                    }
                                    addr124:
                                    if(§§pop() >= 0)
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       _loc6_ = this.§61§[_loc5_];
                                       (_loc7_ = this.§&,§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
                                       if(_loc8_ || this)
                                       {
                                          this.§4"#§(_loc7_,this.§61§,this.§,!K§);
                                          while(true)
                                          {
                                             loop3:
                                             do
                                             {
                                                if(this.§,!K§.length > 0)
                                                {
                                                   this.§61§[this.§61§.length] = this.§,!K§.pop();
                                                   continue;
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   this.§7!G§[this.§7!G§.length] = _loc7_;
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
                                                            §§push(this.§-v§);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  while(!(_loc9_ && _loc2_))
                                                                  {
                                                                     this.§-v§ = _loc7_.right;
                                                                     while(_loc8_ || _loc3_)
                                                                     {
                                                                        if(!(_loc8_ || param1))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop3;
                                                                  addr199:
                                                               }
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_.bottom);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(this.§%!h§);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 this.§%!h§ = _loc7_.bottom;
                                                                                 addr189:
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break loop11;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr191:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               addr262:
                                                               this.§1!V§(_loc2_);
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(!_loc9_);
                                             
                                          }
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc8_ || this)
                                 {
                                    addr115:
                                    §§push(§§pop());
                                    if(_loc8_ || _loc3_)
                                    {
                                       _loc5_ = §§pop();
                                    }
                                    §§goto(addr124);
                                 }
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr96);
               }
               return this.§+I§;
            }
         }
         §§goto(addr42);
      }
      
      private function §!!1§(param1:Vector.<§!R§>) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§!R§ = null;
         var _loc4_:* = 0;
         var _loc5_:§!R§ = null;
         var _loc6_:§!R§ = null;
         var _loc2_:int = param1.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1[_loc2_];
            if(!_loc7_)
            {
               §§push(int(param1.length - 1));
               if(_loc8_)
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
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc7_ && param1)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       _loc5_ = param1[_loc4_];
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(_loc3_.x);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc5_.x);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               while(!(_loc7_ && param1))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ || _loc3_))
                                                                              {
                                                                                 while(_loc8_)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop25;
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr212:
                                                                              }
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break loop25;
                                                                                    }
                                                                                    §§push(_loc3_.bottom);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr149:
                                                                                       while(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc5_.right);
                                                                                       }
                                                                                       continue loop7;
                                                                                       addr149:
                                                                                    }
                                                                                    §§push(_loc5_.bottom);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr94:
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ || _loc2_))
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   this.§5!X§(_loc3_);
                                                                                                   continue loop26;
                                                                                                }
                                                                                                addr224:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.y);
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr256:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(!(_loc8_ || _loc2_))
                                                                                                      {
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop15;
                                                                                             §§goto(addr94);
                                                                                          }
                                                                                          addr201:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr149);
                                                                                 }
                                                                                 addr136:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                                 addr223:
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr136);
                                                                           }
                                                                        }
                                                                        §§goto(addr108);
                                                                     }
                                                                     continue;
                                                                     addr166:
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr262);
                           }
                        }
                     }
                  }
                  §§push(_loc2_);
                  if(_loc8_ || this)
                  {
                     §§goto(addr291);
                  }
                  §§goto(addr292);
               }
               §§goto(addr259);
            }
            §§goto(addr72);
         }
      }
      
      private function §4"#§(param1:§!R§, param2:Vector.<§!R§>, param3:Vector.<§!R§>) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§!R§ = null;
         var _loc11_:§!R§ = null;
         §§push(param1.x);
         if(!(_loc12_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1.y);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param1.right);
         if(!_loc12_)
         {
            §§push(§§pop() + 1);
            if(!_loc12_)
            {
               §§push(§§pop() + this.§!!7§);
            }
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param1.bottom);
         if(!(_loc12_ && param1))
         {
            §§push(§§pop() + 1);
            if(!_loc12_)
            {
               §§push(§§pop() + this.§!!7§);
            }
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:§!R§ = null;
         if(_loc13_)
         {
            §§push(this.§!!7§);
            if(!_loc12_)
            {
               if(§§pop() == 0)
               {
                  addr82:
                  _loc8_ = param1;
               }
               §§push(int(param2.length - 1));
            }
            var _loc9_:* = §§pop();
            loop0:
            while(_loc9_ >= 0)
            {
               _loc10_ = param2[_loc9_];
               if(!_loc12_)
               {
                  §§push(_loc4_);
                  if(!_loc12_)
                  {
                     §§push(_loc10_.right);
                     if(_loc13_ || param1)
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
                                    if(!_loc12_)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc12_)
                                          {
                                             §§push(_loc10_.x);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() <= §§pop());
                                                if(_loc13_ || param2)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc13_ || param3)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(_loc10_.bottom);
                                                                           if(_loc13_ || param1)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(!_loc12_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc13_ || param1)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr214:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!(_loc12_ && param2))
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr244:
                                                                                       this.§switch§(_loc8_,_loc10_,param3);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc11_ = param2.pop();
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(_loc9_ < param2.length)
                                                                                          {
                                                                                             if(_loc13_ || param1)
                                                                                             {
                                                                                                param2[_loc9_] = _loc11_;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc9_);
                                                                                 if(_loc13_ || param3)
                                                                                 {
                                                                                    addr280:
                                                                                    §§push(§§pop() - 1);
                                                                                    break loop4;
                                                                                 }
                                                                                 break loop4;
                                                                                 addr116:
                                                                              }
                                                                              §§pop();
                                                                              if(_loc12_ && param1)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(!(_loc12_ && param2))
                                                                                    {
                                                                                       addr213:
                                                                                       §§push(§§pop() <= _loc10_.y);
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                        break loop4;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr226:
                                                               _loc8_ = this.§&,§(param1.x,param1.y,param1.width + this.§!!7§,param1.height + this.§!!7§);
                                                               §§goto(addr244);
                                                               addr163:
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                   }
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr213);
                                          }
                                          break;
                                       }
                                       _loc9_ = §§pop();
                                       continue loop0;
                                    }
                                    §§goto(addr226);
                                 }
                              }
                              §§goto(addr158);
                           }
                        }
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr280);
               }
               §§goto(addr138);
            }
            if(_loc13_)
            {
               §§push(Boolean(_loc8_));
               if(!(_loc12_ && param3))
               {
                  if(§§pop())
                  {
                     if(!_loc12_)
                     {
                        addr300:
                        §§pop();
                        if(!(_loc12_ && param2))
                        {
                           §§push(_loc8_ == param1);
                           if(_loc12_)
                           {
                           }
                           §§goto(addr341);
                        }
                        §§goto(addr347);
                     }
                     §§goto(addr341);
                  }
                  addr341:
                  if(!§§pop())
                  {
                     if(_loc13_)
                     {
                        this.§5!X§(_loc8_);
                        addr347:
                        while(true)
                        {
                           §§goto(addr313);
                        }
                        addr347:
                     }
                     §§goto(addr347);
                  }
                  addr313:
                  §§goto(addr324);
               }
               §§goto(addr300);
            }
            addr324:
            while(true)
            {
               this.§!!1§(param3);
               if(_loc13_ || param2)
               {
                  break;
               }
               continue loop10;
            }
            return;
         }
         §§goto(addr82);
      }
      
      private function §switch§(param1:§!R§, param2:§!R§, param3:Vector.<§!R§>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:int = 0;
         §§push(param2.right);
         if(_loc10_)
         {
            §§push(param1.right);
            if(_loc10_)
            {
               addr29:
               §§push(int(§§pop() - §§pop()));
               §§push(int(§§pop() - §§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc10_ || this)
            {
               §§push(0);
               if(!(_loc9_ && this))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc10_)
                     {
                        param3[param3.length] = this.§&,§(param1.right,param2.y,_loc5_,param2.height);
                        if(!_loc9_)
                        {
                           _loc4_++;
                        }
                     }
                  }
                  §§push(param1.x);
                  if(!_loc9_)
                  {
                     §§push(param2.x);
                     if(_loc10_)
                     {
                        addr75:
                        §§push(int(§§pop() - §§pop()));
                        §§push(int(§§pop() - §§pop()));
                     }
                  }
                  §§goto(addr75);
               }
               var _loc6_:* = §§pop();
               if(_loc10_ || param3)
               {
                  §§push(0);
                  if(!(_loc9_ && param2))
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc10_)
                        {
                           param3[param3.length] = this.§&,§(param2.x,param2.y,_loc6_,param2.height);
                           if(_loc10_)
                           {
                              _loc4_++;
                           }
                        }
                     }
                     §§push(param2.bottom);
                     if(_loc10_)
                     {
                        §§push(param1.bottom);
                        if(!(_loc9_ && param2))
                        {
                           addr126:
                           §§push(int(§§pop() - §§pop()));
                           §§push(int(§§pop() - §§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(_loc10_ || this)
                        {
                           §§push(0);
                           if(!(_loc9_ && param1))
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc10_ || param3)
                                 {
                                    param3[param3.length] = this.§&,§(param2.x,param1.bottom,param2.width,_loc7_);
                                    if(!(_loc9_ && param2))
                                    {
                                       _loc4_++;
                                    }
                                 }
                              }
                              §§push(param1.y);
                              if(_loc10_ || param3)
                              {
                                 §§push(param2.y);
                                 if(!(_loc9_ && param3))
                                 {
                                    addr202:
                                    §§push(int(§§pop() - §§pop()));
                                    §§push(int(§§pop() - §§pop()));
                                 }
                              }
                              §§goto(addr202);
                           }
                           var _loc8_:* = §§pop();
                           if(!_loc9_)
                           {
                              §§push(0);
                              if(!(_loc9_ && this))
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       param3[param3.length] = this.§&,§(param2.x,param2.y,param2.width,_loc8_);
                                       if(_loc10_)
                                       {
                                          _loc4_++;
                                          loop0:
                                          while(true)
                                          {
                                             addr305:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                addr306:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop6:
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
                                                                     if(!_loc9_)
                                                                     {
                                                                        param3[param3.length] = param2;
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  this.§5!X§(param2);
                                                                  if(_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr233:
                                                                     return;
                                                                     addr247:
                                                                  }
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(param1.height);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(param2.height);
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc9_ && param2)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§push(§§pop() < §§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr293:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() < §§pop());
                                                                              break loop5;
                                                                           }
                                                                           addr293:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(_loc9_ && this)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr293);
                                                                        §§push(param2.width);
                                                                        addr284:
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr233);
                                                               addr280:
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr305);
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr306);
                        }
                        §§goto(addr202);
                     }
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr75);
         }
         §§goto(addr29);
      }
      
      private function §@!S§(param1:int, param2:int) : int
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:§!R§ = null;
         var _loc3_:§!R§ = this.§@R§;
         var _loc4_:* = -1;
         §§push(param1);
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop() + this.§!!7§));
         }
         var _loc5_:* = §§pop();
         §§push(param2);
         if(_loc10_)
         {
            §§push(int(§§pop() + this.§!!7§));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int;
         §§push(_loc7_ = this.§61§.length);
         if(_loc10_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ >= 0)
         {
            §§push((_loc9_ = this.§61§[_loc8_]).x);
            if(!(_loc11_ && _loc3_))
            {
               §§push(this.§-v§);
               if(!_loc11_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc11_ && this))
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
                                 §§push(_loc9_.y);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§%!h§);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc10_)
                                       {
                                          loop27:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(_loc9_.x);
                                                if(_loc10_)
                                                {
                                                   §§goto(addr430);
                                                }
                                                break;
                                             }
                                             if(_loc10_ || param1)
                                             {
                                                §§push(_loc9_.x);
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   §§push(_loc3_.x);
                                                   loop28:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() < §§pop());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push(§§pop());
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(_loc9_.width);
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(_loc9_.height);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop35:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!(_loc11_ && param2))
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!(_loc11_ && param1))
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        loop47:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.width);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(!(_loc11_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr665:
                                                                                                                                       loop41:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.width);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.height);
                                                                                                                                                if(_loc11_ && this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   if(_loc10_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr418:
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         _loc3_ = _loc9_;
                                                                                                                                                         break loop35;
                                                                                                                                                      }
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         break loop0;
                                                                                                                                                      }
                                                                                                                                                      loop43:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_.width);
                                                                                                                                                         addr585:
                                                                                                                                                         while(!(_loc10_ || param1))
                                                                                                                                                         {
                                                                                                                                                            loop16:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop27;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop33;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc9_.height);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        addr669:
                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                        break loop30;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr652:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr688:
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(!(_loc11_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr696);
                                                                                                                                                                              }
                                                                                                                                                                              break loop16;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop41;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr644:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                  if(_loc10_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                     break loop41;
                                                                                                                                                                  }
                                                                                                                                                                  break loop16;
                                                                                                                                                               }
                                                                                                                                                               break loop41;
                                                                                                                                                            }
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         addr592:
                                                                                                                                                         §§push(_loc9_.height);
                                                                                                                                                         loop5:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                            addr595:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr598:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     addr632:
                                                                                                                                                                     loop8:
                                                                                                                                                                     for(; !(_loc11_ && this); while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           break loop31;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     },if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           addr684:
                                                                                                                                                                           break loop0;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop0;
                                                                                                                                                                     },_loc3_ = _loc9_,§§goto(addr688))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr609:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_.right);
                                                                                                                                                                                    if(_loc10_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr551:
                                                                                                                                                                                       §§push(this.§<`§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc11_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr553:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr696);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                              addr609:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr562:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr671:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr673:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr644);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr672:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr651);
                                                                                                                                                                           }
                                                                                                                                                                           addr671:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr714);
                                                                                                                                                                     }
                                                                                                                                                                     addr632:
                                                                                                                                                                     while(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        break loop28;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr634:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc10_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        break loop41;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr410:
                                                                                                                                                }
                                                                                                                                                continue loop30;
                                                                                                                                                break loop28;
                                                                                                                                             }
                                                                                                                                             break loop37;
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr615);
                                                                                                                                       }
                                                                                                                                       addr665:
                                                                                                                                       addr284:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr514:
                                                                                                                                                if(!(_loc11_ && this))
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_.right);
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§<`§);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               if(!(_loc11_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  while(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(_loc10_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop36;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop33;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           if(!(_loc11_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_.height);
                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                 if(_loc10_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr632);
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop28;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr650);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr696);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr665);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr652);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr418);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr598);
                                                                                                                                                            }
                                                                                                                                                            break loop1;
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr551);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr612);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr517:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr525:
                                                                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr539:
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr541);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc9_.height);
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr680:
                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                              §§push(§§pop() <= _loc9_.width);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr714);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr673);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc11_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2);
                                                                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr473:
                                                                                                                                                                              §§push(_loc9_.height);
                                                                                                                                                                              if(_loc10_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc10_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc11_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop47;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr648);
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop1;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr553);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr680);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr585);
                                                                                                                                                                        }
                                                                                                                                                                        addr696:
                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                        if(!(_loc11_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           break loop16;
                                                                                                                                                                        }
                                                                                                                                                                        addr719:
                                                                                                                                                                        addr719:
                                                                                                                                                                        return §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     §§goto(addr525);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr634);
                                                                                                                                                                  addr574:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr684);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr609);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr681);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr563);
                                                                                                                                                }
                                                                                                                                                addr514:
                                                                                                                                             }
                                                                                                                                             §§goto(addr170);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr234:
                                                                                                                                    }
                                                                                                                                    §§goto(addr632);
                                                                                                                                 }
                                                                                                                                 §§goto(addr671);
                                                                                                                              }
                                                                                                                              §§goto(addr562);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr514);
                                                                                                                                       }
                                                                                                                                       §§goto(addr652);
                                                                                                                                    }
                                                                                                                                    while(!(_loc11_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          break loop28;
                                                                                                                                       }
                                                                                                                                       break loop30;
                                                                                                                                    }
                                                                                                                                    §§goto(addr672);
                                                                                                                                    addr622:
                                                                                                                                 }
                                                                                                                                 §§goto(addr595);
                                                                                                                              }
                                                                                                                              §§goto(addr562);
                                                                                                                           }
                                                                                                                           §§goto(addr681);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr430:
                                                                                                                  §§push(_loc3_.x);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr437:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc11_ && this))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    break loop33;
                                                                                                                                    addr456:
                                                                                                                                 }
                                                                                                                                 §§goto(addr665);
                                                                                                                              }
                                                                                                                              §§goto(addr681);
                                                                                                                           }
                                                                                                                           break loop30;
                                                                                                                        }
                                                                                                                        §§goto(addr517);
                                                                                                                     }
                                                                                                                     §§goto(addr562);
                                                                                                                  }
                                                                                                                  §§goto(addr680);
                                                                                                               }
                                                                                                               §§goto(addr473);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr406:
                                                                                                               §§push(_loc9_.width);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§goto(addr410);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr669);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr688);
                                                                                                   }
                                                                                                   addr297:
                                                                                                }
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr669);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr574);
                                                                                 }
                                                                              }
                                                                              §§goto(addr681);
                                                                              addr326:
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr671);
                                                                           §§goto(addr669);
                                                                        }
                                                                        §§goto(addr650);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                                  §§goto(addr539);
                                                               }
                                                               §§goto(addr437);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                      }
                                                      break;
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() <= §§pop());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr514);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr632);
                                                   }
                                                   addr631:
                                                }
                                                §§goto(addr719);
                                             }
                                             §§goto(addr456);
                                             §§goto(addr430);
                                          }
                                          while(true)
                                          {
                                             §§push(_loc9_.width);
                                             break loop1;
                                          }
                                          addr347:
                                       }
                                       §§goto(addr609);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr622);
                                 }
                              }
                              §§goto(addr655);
                           }
                           §§goto(addr514);
                        }
                        §§goto(addr347);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr631);
               }
               §§goto(addr560);
            }
            §§goto(addr268);
         }
         §§goto(addr719);
         §§push(_loc4_);
      }
      
      private function §&,§(param1:int, param2:int, param3:int, param4:int) : §!R§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§!R§ = null;
         if(_loc6_)
         {
            if(this.§"%§.length <= 0)
            {
               return new §!R§(param1,param2,param3,param4);
            }
         }
         (_loc5_ = this.§"%§.pop()).x = param1;
         if(_loc6_)
         {
            _loc5_.y = param2;
            while(true)
            {
               _loc5_.width = param3;
               while(_loc6_ || param1)
               {
                  _loc5_.height = param4;
                  while(!_loc7_)
                  {
                     _loc5_.right = param1 + param3;
                     if(_loc6_ || this)
                     {
                        _loc5_.bottom = param2 + param4;
                        return _loc5_;
                        addr67:
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private function §5!X§(param1:§!R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"%§[this.§"%§.length] = param1;
         }
      }
      
      private function §1R§(param1:int, param2:int, param3:int) : §6r§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§6r§ = null;
         if(_loc5_ || this)
         {
            if(this.§%p§.length <= 0)
            {
               return new §6r§(param1,param2,param3);
            }
         }
         (_loc4_ = this.§%p§.pop()).width = param1;
         if(!(_loc6_ && param1))
         {
            _loc4_.height = param2;
            do
            {
               _loc4_.id = param3;
            }
            while(_loc6_ && param2);
            
         }
         return _loc4_;
      }
      
      private function §1!V§(param1:§6r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§%p§[this.§%p§.length] = param1;
         }
      }
   }
}
