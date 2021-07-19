package §'!3§
{
   import §%q§.Texture;
   import §'O§.§+!-§;
   import §+o§.§3C§;
   import §6![§.DisplayObject;
   import §9!B§.§ _§;
   import §`!a§.§0L§;
   import §`!a§.§1"&§;
   import §`!a§.§4>§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §"L§ extends DisplayObject implements § _§
   {
       
      
      private var §'!t§:Texture;
      
      private var §#z§:Vector.<§;x§>;
      
      private var §5"$§:Number;
      
      private var §%!_§:Vector.<Number>;
      
      private var §0",§:Vector.<Number>;
      
      private var §1!&§:§3C§;
      
      private var §8"&§:VertexBuffer3D;
      
      private var §<!]§:VertexBuffer3D;
      
      private var §4H§:VertexBuffer3D;
      
      private var §!!r§:Vector.<uint>;
      
      private var §&8§:IndexBuffer3D;
      
      private var §3X§:int;
      
      private var §-A§:int;
      
      private var §08§:Number;
      
      protected var §9!e§:Number;
      
      private var §^$§:Number = 0.0;
      
      private var §!!t§:Number;
      
      protected var §!!I§:Number;
      
      protected var §?!q§:Number;
      
      protected var §>#§:Boolean;
      
      protected var §&!H§:String;
      
      protected var §9!K§:String;
      
      protected var §<,§:String;
      
      private var §4B§:int = -1;
      
      private var §<!N§:Boolean = false;
      
      private var §9u§:Number = 0.0;
      
      public function §"L§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(_loc8_ || param1)
            {
               if(param1 == null)
               {
                  if(!_loc7_)
                  {
                     throw new ArgumentError("texture must not be null");
                  }
                  while(true)
                  {
                     loop5:
                     for(; !(_loc7_ && param2); if(_loc7_ && param1)
                     {
                        continue;
                     },this.§5"$§ = 0,if(_loc8_)
                     {
                        if(false)
                        {
                           §§goto(addr28);
                        }
                        this.§!!I§ = this.§?!q§ = 0;
                        if(_loc8_)
                        {
                           §§push(this);
                           if(!_loc7_)
                           {
                              §§push(param5);
                              if(_loc8_ || param2)
                              {
                                 §§push(§§pop());
                                 if(!(_loc7_ && param3))
                                 {
                                    addr275:
                                    if(!§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§pop();
                                          addr290:
                                          §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                       }
                                    }
                                 }
                                 §§pop().§9!K§ = §§pop();
                                 §§goto(addr294);
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr290);
                           addr186:
                        }
                        §§goto(addr255);
                     },§§goto(addr186))
                     {
                        this.§1!&§ = new §3C§(0,this.§>#§);
                        loop6:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              this.§!!r§ = new Vector.<uint>(0);
                              if(_loc8_ || param2)
                              {
                                 this.§08§ = param2;
                                 if(!_loc7_)
                                 {
                                    addr60:
                                    if(!(_loc7_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§!!t§ = 0;
                                          if(_loc7_ && param1)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       addr202:
                                       addr28:
                                    }
                                    else
                                    {
                                       while(!_loc7_)
                                       {
                                          this.§#z§ = new Vector.<§;x§>(0,false);
                                          while(true)
                                          {
                                             this.§%!_§ = new Vector.<Number>();
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             this.§0",§ = new Vector.<Number>();
                                             continue loop5;
                                          }
                                          loop8:
                                          for(; param3 > 0; while(true)
                                          {
                                             if(!(_loc7_ && param3))
                                             {
                                                continue loop8;
                                             }
                                             addr294:
                                             §§push(this);
                                             if(_loc8_ || param3)
                                             {
                                                §§push(param4);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc7_ && this)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                §§pop();
                                                if(_loc8_)
                                                {
                                                   if(!this.§>#§)
                                                   {
                                                      §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                      continue;
                                                   }
                                                }
                                             }
                                             §§push(Context3DBlendFactor.ONE);
                                             if(_loc7_)
                                             {
                                             }
                                          })
                                          {
                                             if(_loc8_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   break loop6;
                                                }
                                                continue;
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr60);
                                       }
                                       while(true)
                                       {
                                          this.§>#§ = param1.premultipliedAlpha;
                                          §§goto(addr136);
                                       }
                                       addr136:
                                       addr153:
                                    }
                                    return;
                                 }
                                 break;
                              }
                              break;
                           }
                           §§goto(addr130);
                        }
                        this.§&"%§(param3);
                        §§goto(addr202);
                     }
                  }
                  addr164:
               }
               while(true)
               {
                  this.§'!t§ = param1;
                  §§goto(addr153);
                  §§goto(addr164);
               }
            }
         }
         §§goto(addr255);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§8"&§)
            {
               loop0:
               while(true)
               {
                  this.§8"&§.dispose();
                  addr123:
                  while(true)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        if(this.§4H§)
                        {
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 break loop4;
                              }
                              while(true)
                              {
                                 this.§4H§.dispose();
                                 addr96:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr91:
                        }
                        while(true)
                        {
                           if(this.§&8§)
                           {
                              loop8:
                              while(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§&8§.dispose();
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             this.§%!_§ = null;
                                             while(true)
                                             {
                                                this.§0",§ = null;
                                                while(_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         super.dispose();
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               break loop10;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue;
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          return;
                                          addr68:
                                       }
                                       §§goto(addr91);
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§<!]§.dispose();
                                    continue loop4;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr68);
                        }
                     }
                  }
                  §§goto(addr123);
               }
            }
            while(true)
            {
               if(this.§<!]§)
               {
                  §§goto(addr101);
               }
               §§goto(addr87);
               §§goto(addr123);
            }
         }
         §§goto(addr93);
      }
      
      protected function createParticle() : §;x§
      {
         return new §;x§();
      }
      
      protected function initParticle(param1:§;x§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.x = this.§!!I§;
            while(true)
            {
               param1.y = this.§?!q§;
               loop1:
               while(true)
               {
                  param1.§+L§ = 0;
                  loop2:
                  while(true)
                  {
                     param1.§,!Q§ = 1;
                     addr89:
                     while(true)
                     {
                        param1.red = Math.random();
                        addr75:
                        while(_loc2_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            param1.blue = Math.random();
            §§goto(addr44);
         }
         §§goto(addr38);
      }
      
      protected function advanceParticle(param1:§;x§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            §§push(param1.y);
            if(!_loc4_)
            {
               §§push(param2);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            while(true)
            {
               §§push(param1);
               §§push(1);
               §§push(param1.§+L§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() / param1.§,!Q§);
               }
               §§pop().alpha = §§pop() - §§pop();
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     param1.scaleX = 1 - param1.alpha;
                     do
                     {
                        param1.scaleY = 1 - param1.alpha;
                        do
                        {
                           §§push(param1);
                           §§push(param1.§+L§);
                           if(_loc3_)
                           {
                              §§push(§§pop() + param2);
                           }
                           §§pop().§+L§ = §§pop();
                        }
                        while(!(_loc3_ || this));
                        
                     }
                     while(!_loc3_);
                     
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr104);
      }
      
      private function §&"%§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         §§push(this.§-E§);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§-E§);
         if(_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§3C§;
         (_loc4_ = new §3C§(4)).setTexCoords(0,0,0);
         if(_loc8_)
         {
            _loc4_.setTexCoords(1,1,0);
            loop0:
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
               loop1:
               while(true)
               {
                  _loc4_.setTexCoords(3,1,1);
                  while(true)
                  {
                     this.§'!t§.adjustVertexData(_loc4_,0,4);
                     while(true)
                     {
                        if(_loc9_ && _loc2_)
                        {
                           break;
                           addr63:
                        }
                        while(true)
                        {
                           this.§#z§.fixed = false;
                           addr68:
                           while(!_loc9_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        addr54:
                        if(!(_loc9_ && _loc3_))
                        {
                           while(false)
                           {
                              §§goto(addr63);
                           }
                           §§push(_loc2_);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc9_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          loop8:
                                          while(!(_loc9_ && _loc2_))
                                          {
                                             this.§#z§.fixed = true;
                                             loop9:
                                             while(!(_loc9_ && this))
                                             {
                                                this.§!!r§.fixed = true;
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§goto(addr168);
                                                      continue loop8;
                                                   }
                                                   continue loop9;
                                                   addr168:
                                                   this.§<!N§ = true;
                                                   if(_loc9_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break loop7;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      this.§#z§.push(this.createParticle());
                                                      addr284:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         loop13:
                                                         while(_loc8_ || _loc2_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            while(true)
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr226:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§push(3);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc8_ || _loc2_)
                                                                              {
                                                                                 this.§1!&§.append(_loc4_);
                                                                                 break loop8;
                                                                              }
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_++;
                                                                                 addr266:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§0",§.push(0);
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(_loc9_)
                                                                           {
                                                                              §§goto(addr266);
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        this.§%!_§.push(0);
                                                                        §§goto(addr266);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             while(_loc9_)
                                             {
                                                §§goto(addr284);
                                             }
                                             _loc5_++;
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                this.§!!r§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                §§goto(addr221);
                                             }
                                             §§goto(addr277);
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                          if(!_loc9_)
                                          {
                                             addr301:
                                             §§push(int(§§pop() * 4));
                                          }
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr301);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr226);
                           }
                           return;
                           addr61:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §?!s§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§<!N§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr27);
                  }
               }
               if(param1 == null)
               {
                  if(_loc4_ || param1)
                  {
                     throw new §+!-§();
                  }
               }
               §§push(this.§1!&§.§6<§);
               if(_loc4_ || param1)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  if(this.§8"&§)
                  {
                     while(true)
                     {
                        this.§8"&§.dispose();
                        addr270:
                        while(true)
                        {
                        }
                     }
                     addr267:
                  }
                  while(true)
                  {
                     if(this.§<!]§)
                     {
                        while(!(_loc3_ && _loc3_))
                        {
                           this.§<!]§.dispose();
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr243:
                     }
                     loop5:
                     while(true)
                     {
                        if(this.§4H§)
                        {
                           while(true)
                           {
                              this.§4H§.dispose();
                              addr238:
                              while(true)
                              {
                              }
                           }
                           addr235:
                        }
                        loop8:
                        while(true)
                        {
                           if(this.§&8§)
                           {
                              while(true)
                              {
                                 this.§&8§.dispose();
                                 addr230:
                                 while(true)
                                 {
                                 }
                              }
                              addr227:
                           }
                           loop11:
                           while(true)
                           {
                              this.§8"&§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§^!§);
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    break loop11;
                                 }
                                 this.§8"&§.uploadFromByteArray(this.§1!&§.§8!b§,0,0,_loc2_ * 4);
                                 loop13:
                                 while(_loc4_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§<!]§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§!"&§);
                                          while(!_loc3_)
                                          {
                                             this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,_loc2_ * 4);
                                             loop15:
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§4H§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§'!F§);
                                                   do
                                                   {
                                                      this.§4H§.uploadFromVector(this.§1!&§.§''§,0,_loc2_ * 4);
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               this.§&8§ = param1.createIndexBuffer(_loc2_ * 6);
                                                               continue;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop13;
                                                   }
                                                   while(_loc3_ && _loc2_);
                                                   
                                                   return true;
                                                   addr89:
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr267);
                                       }
                                       else
                                       {
                                          §§goto(addr243);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr227);
                                    }
                                 }
                                 continue loop11;
                              }
                           }
                           §§goto(addr235);
                        }
                     }
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr27);
         }
         addr27:
         return false;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§08§ != 0)
            {
               if(_loc3_)
               {
                  this.§!!t§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!!t§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §3!+§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc6_)
         {
            if(param2 != null)
            {
               while(true)
               {
                  param2.x = _loc4_.x;
                  loop1:
                  while(_loc6_)
                  {
                     param2.y = _loc4_.y;
                     while(true)
                     {
                        param2.width = 0;
                        loop3:
                        while(_loc6_)
                        {
                           while(true)
                           {
                              param2.height = 0;
                              if(_loc6_ || param1)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           if(_loc6_ || param1)
                           {
                              return param2;
                           }
                           addr108:
                           return new Rectangle(_loc4_.x,_loc4_.y);
                        }
                     }
                  }
               }
            }
            §§goto(addr108);
         }
         §§goto(addr80);
      }
      
      public function §^Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.advanceTime(param1);
            do
            {
               this.§#6§(null);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9u§ = param1;
         }
      }
      
      private function §#6§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §8!u§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;x§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§3X§)
         {
            _loc3_ = this.§#z§[_loc2_];
            if(_loc4_)
            {
               this.§%!_§[_loc2_ * 3] = _loc3_.x;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§%!_§[_loc2_ * 3 + 1] = _loc3_.y;
                     do
                     {
                        _loc2_++;
                     }
                     while(_loc5_ && param1);
                     
                     if(!(_loc4_ || param1))
                     {
                        break;
                        addr58:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr58);
         }
         if(_loc4_)
         {
            param1.transformVectors(this.§%!_§,this.§0",§);
         }
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            this.§#6§(param1.§+!c§);
            loop0:
            while(true)
            {
               if(this.§-A§ != 0)
               {
                  loop1:
                  while(true)
                  {
                     param1.§6"$§();
                     while(!(_loc7_ && param2))
                     {
                        §§push(param2);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() * this.alpha);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        if(_loc7_)
                        {
                           continue;
                        }
                        if(_loc7_ && _loc3_)
                        {
                           break loop1;
                        }
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue loop1;
                        }
                        §§push(§4>§);
                        §§push(param2 == 1);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop().§0!<§(§§pop(),this.§'!t§.mipMapping,false,this.§<,§,true));
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Context3D;
                        if((_loc4_ = param1.§`r§) == null)
                        {
                           if(!_loc7_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           var _loc5_:Vector.<Number> = !!this.§>#§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                           if(!_loc7_)
                           {
                              if(param1.§#A§ != this.§4B§)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§&"%§(0);
                                    addr405:
                                    while(true)
                                    {
                                       addr381:
                                       addr386:
                                       this.§4B§ = param1.§#A§;
                                       addr386:
                                       while(true)
                                       {
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       _loc4_.setProgram(§1"&§.§1i§.§>p§(_loc3_));
                                       loop12:
                                       while(true)
                                       {
                                          _loc4_.setTextureAt(0,this.§'!t§.getBase(_loc4_));
                                          while(true)
                                          {
                                             _loc4_.setVertexBufferAt(0,this.§4H§,§3C§.§2!F§,Context3DVertexBufferFormat.FLOAT_3);
                                             addr318:
                                             while(true)
                                             {
                                                _loc4_.setVertexBufferAt(1,this.§8"&§,§3C§.§null §,Context3DVertexBufferFormat.FLOAT_2);
                                                addr305:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      _loc4_.setVertexBufferAt(2,this.§<!]§,§3C§.§0!g§,Context3DVertexBufferFormat.FLOAT_4);
                                                      continue loop12;
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr405);
                                             }
                                             loop20:
                                             while(!(_loc7_ && _loc3_))
                                             {
                                                _loc4_.setVertexBufferAt(0,null);
                                                loop21:
                                                while(!(_loc7_ && param1))
                                                {
                                                   _loc4_.setVertexBufferAt(1,null);
                                                   for(; _loc6_; _loc4_.setVertexBufferAt(2,null),if(!_loc7_)
                                                   {
                                                      continue loop21;
                                                   })
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      addr380:
                                                      while(true)
                                                      {
                                                         this.§4H§.uploadFromVector(this.§1!&§.§''§,0,this.§-A§ * 4);
                                                         addr363:
                                                         while(true)
                                                         {
                                                            addr336:
                                                            while(true)
                                                            {
                                                               _loc4_.setBlendFactors(this.§&!H§,this.§9!K§);
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(!_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc4_.drawTriangles(this.§&8§,0,this.§-A§ * 2);
                                                         continue loop20;
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr318);
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop12;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                               §§goto(addr256);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr386);
                                                            }
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      §§goto(addr305);
                                                      addr268:
                                                   }
                                                   §§goto(addr206);
                                                }
                                                while(true)
                                                {
                                                   this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,this.§-A§ * 4);
                                                   §§goto(addr380);
                                                   §§goto(addr222);
                                                }
                                                addr222:
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!this.§?!s§(_loc4_))
                                 {
                                    §§goto(addr369);
                                 }
                                 §§goto(addr336);
                                 §§goto(addr386);
                              }
                           }
                           §§goto(addr258);
                        }
                        §§goto(addr125);
                     }
                     addr70:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function get §1]§() : Boolean
      {
         return false;
      }
      
      public function get §-E§() : int
      {
         return this.§1!&§.§6<§ / 4;
      }
      
      public function get §3'§() : int
      {
         return this.§3X§;
      }
      
      public function get §package§() : Number
      {
         return this.§08§;
      }
      
      public function set §package§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§08§ = param1;
         }
      }
      
      public function get §#!E§() : Number
      {
         return this.§!!I§;
      }
      
      public function set §#!E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!I§ = param1;
         }
      }
      
      public function get §=!E§() : Number
      {
         return this.§?!q§;
      }
      
      public function set §=!E§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?!q§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§'!t§;
      }
   }
}
