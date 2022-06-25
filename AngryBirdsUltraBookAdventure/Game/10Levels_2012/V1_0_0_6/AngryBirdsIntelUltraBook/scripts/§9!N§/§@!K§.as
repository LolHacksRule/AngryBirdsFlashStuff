package §9!N§
{
   import §!!K§.§?%§;
   import §!!K§.§`L§;
   import §!!K§.§else§;
   import §"H§.§!7§;
   import §4!S§.§<!f§;
   import §4>§.Texture;
   import §7!B§.DisplayObject;
   import §9!k§.§=A§;
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
   
   public class §@!K§ extends DisplayObject implements §!7§
   {
       
      
      private var §5!6§:Texture;
      
      private var §]=§:Vector.<§4!h§>;
      
      private var §7!§:Number;
      
      private var §#^§:Vector.<Number>;
      
      private var §<U§:Vector.<Number>;
      
      private var § !3§:§=A§;
      
      private var §5!g§:VertexBuffer3D;
      
      private var §2!N§:VertexBuffer3D;
      
      private var §[P§:VertexBuffer3D;
      
      private var §,!J§:Vector.<uint>;
      
      private var §6T§:IndexBuffer3D;
      
      private var §,j§:int;
      
      private var §7!!§:int;
      
      private var § P§:Number;
      
      protected var §@b§:Number;
      
      private var §"!H§:Number = 0.0;
      
      private var §&!F§:Number;
      
      protected var §%Z§:Number;
      
      protected var §8!c§:Number;
      
      protected var §3!Z§:Boolean;
      
      protected var §%r§:String;
      
      protected var §6!h§:String;
      
      protected var §=!W§:String;
      
      private var § !h§:int = -1;
      
      private var §'i§:Boolean = false;
      
      private var §>!&§:Number = 0.0;
      
      public function §@!K§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super();
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc8_)
                  {
                     throw new ArgumentError("texture must not be null");
                  }
               }
               else
               {
                  while(true)
                  {
                     this.§5!6§ = param1;
                     while(true)
                     {
                        this.§3!Z§ = param1.premultipliedAlpha;
                        loop3:
                        while(true)
                        {
                           this.§]=§ = new Vector.<§4!h§>(0,false);
                           while(true)
                           {
                              if(!(_loc7_ && param3))
                              {
                                 this.§#^§ = new Vector.<Number>();
                                 if(_loc7_ && this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           addr229:
                           this.§+!A§(param3);
                           §§goto(addr232);
                        }
                     }
                  }
               }
               §§goto(addr229);
            }
         }
         §§goto(addr212);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§5!g§)
            {
               while(true)
               {
                  this.§5!g§.dispose();
                  addr127:
                  while(true)
                  {
                  }
               }
               addr124:
            }
            loop2:
            while(true)
            {
               if(this.§2!N§)
               {
                  while(true)
                  {
                     this.§2!N§.dispose();
                     addr120:
                     while(true)
                     {
                     }
                  }
                  addr117:
               }
               loop5:
               while(true)
               {
                  if(this.§[P§)
                  {
                     while(true)
                     {
                        this.§[P§.dispose();
                        addr112:
                        addr79:
                        while(true)
                        {
                        }
                        if(_loc1_ || this)
                        {
                           this.§<U§ = null;
                           loop13:
                           for(; _loc1_ || this; while(true)
                           {
                              super.dispose();
                              if(_loc2_)
                              {
                                 continue loop13;
                              }
                              if(_loc1_)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§goto(addr117);
                                    }
                                    else
                                    {
                                       §§goto(addr112);
                                    }
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    addr73:
                                    while(true)
                                    {
                                       this.§#^§ = null;
                                       continue loop10;
                                    }
                                 }
                                 addr104:
                              }
                              loop12:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr79);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§6T§.dispose();
                                       break loop12;
                                    }
                                    addr101:
                                 }
                              }
                              §§goto(addr104);
                           },return)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr124);
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.§6T§)
                     {
                        §§goto(addr101);
                     }
                     §§goto(addr73);
                     §§goto(addr112);
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function createParticle() : §4!h§
      {
         return new §4!h§();
      }
      
      protected function initParticle(param1:§4!h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.x = this.§%Z§;
            while(true)
            {
               param1.y = this.§8!c§;
               loop1:
               for(; _loc2_; if(!(_loc2_ || _loc3_))
               {
                  continue;
               },param1.alpha = 0,if(_loc2_ || param1)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr102);
                  }
                  return;
                  addr36:
               },loop6:
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr44);
                  }
                  addr74:
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        param1.blue = Math.random();
                        continue loop6;
                     }
                  }
               },addr68:,§§goto(addr107))
               {
                  param1.§45§ = 0;
                  while(true)
                  {
                     param1.§3!&§ = 1;
                     addr102:
                     addr44:
                     while(true)
                     {
                        param1.red = Math.random();
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            param1.green = Math.random();
            §§goto(addr74);
         }
         §§goto(addr36);
      }
      
      protected function advanceParticle(param1:§4!h§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_ || _loc3_)
            {
               §§push(param2);
               if(_loc4_ || _loc3_)
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
               §§push(param1.§45§);
               if(_loc4_)
               {
                  §§push(§§pop() / param1.§3!&§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(!_loc3_)
               {
                  param1.scaleX = 1 - param1.alpha;
                  loop2:
                  while(_loc4_ || param1)
                  {
                     param1.scaleY = 1 - param1.alpha;
                     while(true)
                     {
                        §§push(param1);
                        §§push(param1.§45§);
                        if(!(_loc3_ && param2))
                        {
                           §§push(§§pop() + param2);
                        }
                        §§pop().§45§ = §§pop();
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §+!A§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         §§push(this.§!0§);
         if(_loc8_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§!0§);
         if(!_loc9_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§=A§;
         (_loc4_ = new §=A§(4)).setTexCoords(0,0,0);
         if(!(_loc9_ && _loc2_))
         {
            _loc4_.setTexCoords(1,1,0);
         }
         loop0:
         while(true)
         {
            _loc4_.setTexCoords(2,0,1);
            while(true)
            {
               _loc4_.setTexCoords(3,1,1);
               while(_loc8_ || _loc2_)
               {
                  continue loop0;
                  loop3:
                  while(_loc8_ || _loc3_)
                  {
                     loop4:
                     do
                     {
                        this.§]=§.fixed = false;
                        while(_loc8_)
                        {
                           this.§,!J§.fixed = false;
                           if(_loc8_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     while(false);
                     
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     addr179:
                     §§push(_loc5_);
                     if(_loc8_)
                     {
                        if(_loc8_)
                        {
                           §§push(_loc3_);
                           if(_loc8_ || _loc3_)
                           {
                              if(_loc8_ || _loc2_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    addr201:
                                    if(_loc8_)
                                    {
                                       this.§]=§.fixed = true;
                                       addr207:
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             this.§,!J§.fixed = true;
                                             addr162:
                                             if(!_loc9_)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      this.§'i§ = true;
                                                      if(_loc8_)
                                                      {
                                                         if(!(_loc8_ || param1))
                                                         {
                                                            §§goto(addr207);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   addr281:
                                                   if(_loc8_)
                                                   {
                                                      _loc7_++;
                                                      addr260:
                                                      §§push(_loc7_);
                                                      if(!_loc9_)
                                                      {
                                                         addr265:
                                                         if(§§pop() >= 3)
                                                         {
                                                            addr266:
                                                            this.§ !3§.append(_loc4_);
                                                            addr270:
                                                            if(_loc8_)
                                                            {
                                                               this.§,!J§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                               addr252:
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  _loc5_++;
                                                                  addr224:
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§goto(addr179);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                            addr312:
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§goto(addr260);
                                                            }
                                                            this.§]=§.push(this.createParticle());
                                                            §§push(0);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               §§goto(addr312);
                                                            }
                                                            addr333:
                                                            _loc6_ = §§pop() * 4;
                                                            addr334:
                                                            §§goto(addr334);
                                                            addr326:
                                                         }
                                                         this.§#^§.push(0);
                                                         this.§<U§.push(0);
                                                         §§goto(addr281);
                                                         addr291:
                                                      }
                                                      §§goto(addr333);
                                                      addr275:
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr201);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr266);
                                 §§push(_loc5_);
                              }
                              §§goto(addr266);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr312);
                     }
                     §§goto(addr260);
                  }
               }
            }
         }
      }
      
      private function §+v§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§'i§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr32);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr45);
                     }
                  }
                  §§push(this.§ !3§.§7?§);
                  if(_loc4_)
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     if(this.§5!g§)
                     {
                        while(true)
                        {
                           this.§5!g§.dispose();
                           addr265:
                           while(true)
                           {
                           }
                        }
                        addr262:
                     }
                     loop2:
                     while(true)
                     {
                        if(this.§2!N§)
                        {
                           while(true)
                           {
                              this.§2!N§.dispose();
                              addr258:
                              while(true)
                              {
                              }
                           }
                           addr255:
                        }
                        loop5:
                        while(true)
                        {
                           if(this.§[P§)
                           {
                              while(true)
                              {
                                 this.§[P§.dispose();
                                 addr250:
                                 while(true)
                                 {
                                 }
                                 addr137:
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_)
                                 {
                                    this.§6T§ = param1.createIndexBuffer(_loc2_ * 6);
                                    loop19:
                                    for(; _loc4_; this.§6T§.uploadFromVector(this.§,!J§,0,_loc2_ * 6),if(_loc3_)
                                    {
                                       continue;
                                    },addr77:,if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!(_loc4_ || param1))
                                          {
                                             continue loop5;
                                          }
                                          if(_loc4_)
                                          {
                                             return true;
                                             addr95:
                                          }
                                          else
                                          {
                                             §§goto(addr255);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§6T§.dispose();
                                             addr242:
                                             loop10:
                                             while(true)
                                             {
                                                addr212:
                                                while(true)
                                                {
                                                   this.§5!g§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§'%§);
                                                   while(!_loc3_)
                                                   {
                                                      this.§5!g§.uploadFromByteArray(this.§ !3§.§>L§,0,0,_loc2_ * 4);
                                                      §§goto(addr211);
                                                      while(_loc4_ || this)
                                                      {
                                                         §§goto(addr137);
                                                         §§goto(addr77);
                                                      }
                                                   }
                                                   §§goto(addr250);
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          addr239:
                                       }
                                    },§§goto(addr130))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       addr211:
                                       while(true)
                                       {
                                          this.§2!N§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§1X§);
                                          addr198:
                                          while(true)
                                          {
                                             this.§2!N§.uploadFromVector(this.§ !3§.§8q§,0,_loc2_ * 4);
                                             addr187:
                                             while(true)
                                             {
                                                this.§[P§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§8=§);
                                                break loop19;
                                             }
                                          }
                                       }
                                    }
                                    while(!(_loc3_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§[P§.uploadFromVector(this.§ !3§.§3!+§,0,_loc2_ * 4);
                                                §§goto(addr130);
                                             }
                                             §§goto(addr95);
                                             addr175:
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr262);
                              }
                           }
                           while(true)
                           {
                              if(this.§6T§)
                              {
                                 §§goto(addr239);
                              }
                              §§goto(addr212);
                              §§goto(addr250);
                           }
                           §§goto(addr258);
                        }
                     }
                  }
                  §§goto(addr175);
               }
               addr45:
               throw new §<!f§();
            }
            §§goto(addr32);
         }
         addr32:
         return false;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§ P§ != 0)
            {
               if(_loc3_)
               {
                  addr25:
                  this.§&!F§ = param1;
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!F§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §6!8§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc6_ || param1)
         {
            if(param2 != null)
            {
               do
               {
                  param2.x = _loc4_.x;
                  do
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     do
                     {
                        param2.width = 0;
                        while(!_loc5_)
                        {
                           param2.height = 0;
                           if(!(_loc5_ && param2))
                           {
                              continue loop2;
                           }
                        }
                     }
                     while(_loc5_ && this);
                     
                  }
                  while(_loc5_ && param1);
                  
               }
               while(!(_loc6_ || this));
               
               return param2;
            }
         }
         return new Rectangle(_loc4_.x,_loc4_.y);
      }
      
      public function §+! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§ !-§(null);
         }
         while(_loc3_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!&§ = param1;
         }
      }
      
      private function § !-§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc4_:§4!h§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§4!h§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:Number = NaN;
         if(_loc35_)
         {
            §§push(Boolean(isNaN(this.§>!&§)));
            if(!_loc34_)
            {
               if(!§§pop())
               {
                  if(_loc35_)
                  {
                     §§goto(addr80);
                  }
               }
               §§goto(addr89);
            }
            addr80:
            §§pop();
            if(!_loc34_)
            {
               §§push(this.§>!&§);
               if(!_loc34_)
               {
                  addr89:
                  if(§§pop() == 0)
                  {
                     if(!_loc34_)
                     {
                        §§goto(addr92);
                     }
                  }
                  §§push(this.§>!&§);
                  if(_loc35_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc34_)
               {
                  this.§>!&§ = 0;
                  if(!(_loc34_ && _loc2_))
                  {
                     _loc2_ = Number(Math.min(0.2,_loc2_));
                  }
               }
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc35_)
                  {
                     §§push(this.§,j§);
                     if(_loc35_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if((_loc4_ = this.§]=§[_loc3_]).§45§ < _loc4_.§3!&§)
                           {
                              if(!_loc35_)
                              {
                                 continue;
                              }
                              this.advanceParticle(_loc4_,_loc2_);
                              if(!(_loc34_ && param1))
                              {
                                 _loc3_++;
                                 if(!_loc34_)
                                 {
                                    continue;
                                 }
                              }
                              addr161:
                              _loc11_ = this.§]=§[this.§,j§ - 1];
                              if(!(_loc34_ && param1))
                              {
                                 this.§]=§[this.§,j§ - 1] = _loc4_;
                                 if(!(_loc34_ && param1))
                                 {
                                    this.§]=§[_loc3_] = _loc11_;
                                 }
                              }
                           }
                           else if(_loc3_ != this.§,j§ - 1)
                           {
                              if(_loc34_)
                              {
                                 continue;
                              }
                              §§goto(addr161);
                           }
                           var _loc32_:*;
                           §§push((_loc32_ = this).§,j§);
                           if(!(_loc34_ && _loc3_))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc33_:* = §§pop();
                           if(!(_loc34_ && param1))
                           {
                              _loc32_.§,j§ = _loc33_;
                           }
                           continue;
                        }
                        if(!(_loc34_ && _loc3_))
                        {
                           §§push(this.§&!F§);
                           if(_loc35_)
                           {
                              §§push(0);
                              if(!(_loc34_ && _loc3_))
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc35_)
                                    {
                                       §§push(1);
                                       if(_loc35_)
                                       {
                                          §§push(§§pop() / this.§ P§);
                                          if(_loc35_ || _loc3_)
                                          {
                                             addr467:
                                             §§push(Number(§§pop()));
                                             if(_loc34_ && _loc2_)
                                             {
                                             }
                                             while(true)
                                             {
                                                §§push(0);
                                                addr468:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(_loc35_ || param1)
                                                      {
                                                         addr478:
                                                         if(this.§&!F§ != Number.MAX_VALUE)
                                                         {
                                                            if(!(_loc34_ && this))
                                                            {
                                                               addr488:
                                                               this.§&!F§ = Math.max(0,this.§&!F§ - _loc2_);
                                                               addr497:
                                                               §§push(0);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr497);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§,j§);
                                                      if(_loc35_)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   §§push(this.§5!6§.width);
                                                   if(!_loc34_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   §§push(this.§5!6§.height);
                                                   if(!(_loc34_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(_loc35_ || this)
                                                   {
                                                      this.§7!!§ = 0;
                                                   }
                                                   var _loc10_:Vector3D = new Vector3D();
                                                   if(_loc35_ || _loc2_)
                                                   {
                                                      if(param1)
                                                      {
                                                         if(!(_loc34_ && _loc2_))
                                                         {
                                                            addr548:
                                                            this.§=!?§(param1);
                                                            if(!(_loc34_ && _loc2_))
                                                            {
                                                               §§goto(addr558);
                                                            }
                                                            §§goto(addr569);
                                                         }
                                                         addr558:
                                                         §§push(0);
                                                         if(_loc35_ || param1)
                                                         {
                                                            _loc14_ = §§pop();
                                                            if(_loc35_)
                                                            {
                                                               addr569:
                                                               while(true)
                                                               {
                                                                  §§push(_loc14_);
                                                               }
                                                               addr2156:
                                                            }
                                                            §§goto(addr2160);
                                                         }
                                                         while(§§pop() < this.§,j§)
                                                         {
                                                            §§push((_loc4_ = this.§]=§[_loc14_]).x);
                                                            if(_loc35_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc34_ && this))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(_loc4_.y);
                                                                     if(_loc35_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc34_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(_loc35_ || this)
                                                                           {
                                                                              §§push(true);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 if(!_loc34_)
                                                                                 {
                                                                                    _loc10_.x = _loc6_;
                                                                                    if(_loc35_ || this)
                                                                                    {
                                                                                       _loc10_.y = _loc7_;
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§push(Number(this.§<U§[_loc14_ * 3]));
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             _loc16_ = §§pop();
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(this.§<U§[_loc14_ * 3 + 1]));
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_.scaleX);
                                                                                                         if(!(_loc34_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc34_)
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(!(_loc34_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc35_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!(_loc35_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(_loc4_.scaleY);
                                                                                                                              if(!(_loc34_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc34_)
                                                                                                                                 {
                                                                                                                                    §§push(2);
                                                                                                                                    if(_loc34_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                          if(!_loc35_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                          if(!_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(!_loc34_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc19_);
                                                                                                                                                loop95:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                   loop110:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         addr2030:
                                                                                                                                                         loop49:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc26_ = §§pop();
                                                                                                                                                               addr2032:
                                                                                                                                                               loop51:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  loop52:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1991:
                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr1993:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 loop97:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop95;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1998:
                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                       loop98:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr2001:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                loop127:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr2003:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc27_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1957:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop97;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc35_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1970:
                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop98;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       loop122:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc28_ = §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1905:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                            if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1927:
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1930:
                                                                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1931:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop122;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc34_ && _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop127;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr2072:
                                                                                                                                                                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2080:
                                                                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                                                                   if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr2043:
                                                                                                                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         addr2044:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                                                                            addr2045:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                                                                               addr2046:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  addr2047:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     addr2048:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr2043:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr2050:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                         break loop15;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2048);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr2049:
                                                                                                                                                                                                                                                                                                   addr2080:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Math.abs(_loc18_ - _loc19_) > 0.5);
                                                                                                                                                                                                                                                                                                      if(!(_loc35_ || this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop58:
                                                                                                                                                                                                                                                                                                      while(!§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§ !3§);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1577:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1584:
                                                                                                                                                                                                                                                                                                                                                §§pop().§[!J§(§§pop(),§§pop(),§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                break loop13;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1686:
                                                                                                                                                                                                                                                                                                                                             §§pop().§[!J§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             loop35:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1689:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§ !3§);
                                                                                                                                                                                                                                                                                                                                                      addr1651:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                                                 loop154:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().§[!J§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc35_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§ !3§);
                                                                                                                                                                                                                                                                                                                                                                                          loop29:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                             addr1629:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(2);
                                                                                                                                                                                                                                                                                                                                                                                                addr1630:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   addr1631:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                      addr1632:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc30_);
                                                                                                                                                                                                                                                                                                                                                                                                         addr1633:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            addr1634:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                               addr1635:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc31_);
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1636:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1637:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().§[!J§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1638:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop15;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop58;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§ !3§);
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop154;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1659:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr2144:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2145);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1689:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1804);
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr2112:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2087);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr2112:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1949:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2087);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1584);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1683:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                                    §§push(_loc27_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1686);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1584);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1683);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1597);
                                                                                                                                                                                                                                                                                                                  if(_loc34_ && _loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1390);
                                                                                                                                                                                                                                                                                                                        §§push(2);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1679);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1659);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1683);
                                                                                                                                                                                                                                                                                                               §§push(_loc26_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1651);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(Math.cos(_loc4_.rotation)));
                                                                                                                                                                                                                                                                                                         addr2111:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                            §§goto(addr2112);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr2141:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2045);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                addr2059:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                                                                   addr2060:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr2061);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2116);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2111);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc29_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr1949);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2117);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr2025);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1918:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2046);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1914:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1918);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1906:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2043);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1914);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1906);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2060);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2047);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2044);
                                                                                                                                                                                                                     §§goto(addr1957);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2059);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2057);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2062);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop110;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1362);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1702);
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr2056);
                                                                                                                              }
                                                                                                                              §§goto(addr1905);
                                                                                                                           }
                                                                                                                           §§goto(addr2003);
                                                                                                                        }
                                                                                                                        §§goto(addr1689);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  _loc30_ = §§pop();
                                                                                                                  §§goto(addr1885);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr2072);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr1827);
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   break;
                                                                                                   if(!(_loc35_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc20_);
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc34_ && this))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            if(!(_loc34_ && _loc2_))
                                                                                                            {
                                                                                                               _loc21_ = §§pop();
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                                  if(!(_loc34_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        §§push(_loc21_);
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              addr738:
                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                              if(_loc35_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc34_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr754:
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(!_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc21_);
                                                                                                                                             if(!_loc34_)
                                                                                                                                             {
                                                                                                                                                addr707:
                                                                                                                                                addr708:
                                                                                                                                                addr706:
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(!(§§pop() > §§pop()))
                                                                                                                                                {
                                                                                                                                                   addr709:
                                                                                                                                                   if(!(_loc35_ || _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr754);
                                                                                                                                                   }
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!_loc34_)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1362);
                                                                                                                                                }
                                                                                                                                                addr676:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc34_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(_loc35_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           if(_loc35_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc35_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr620:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc34_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                                                                   if(_loc35_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr648:
                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                            if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr676);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2120);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1905);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1927);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1722);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr819);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2080);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr904);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr820);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr738);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2120);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2080);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr819);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr709);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1121);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1957);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1905);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2032);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2120);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr620);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr899);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr708);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2138);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1957);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2111);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2088);
                                                                                                                                    }
                                                                                                                                    §§goto(addr706);
                                                                                                                                 }
                                                                                                                                 §§goto(addr925);
                                                                                                                              }
                                                                                                                              §§goto(addr2138);
                                                                                                                           }
                                                                                                                           §§goto(addr1998);
                                                                                                                        }
                                                                                                                        §§goto(addr2043);
                                                                                                                     }
                                                                                                                     §§goto(addr2087);
                                                                                                                  }
                                                                                                                  §§goto(addr821);
                                                                                                               }
                                                                                                               §§goto(addr2080);
                                                                                                            }
                                                                                                            §§goto(addr872);
                                                                                                         }
                                                                                                         §§goto(addr2001);
                                                                                                      }
                                                                                                      §§goto(addr1709);
                                                                                                   }
                                                                                                   §§goto(addr1970);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc18_);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      if(!(_loc34_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr2017);
                                                                                                         §§push(-§§pop());
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr2030);
                                                                                                }
                                                                                                §§goto(addr2048);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr2072);
                                                                                       }
                                                                                       §§goto(addr1452);
                                                                                    }
                                                                                    §§goto(addr1624);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr1456);
                                                                              }
                                                                           }
                                                                           §§goto(addr2112);
                                                                        }
                                                                        §§goto(addr2116);
                                                                     }
                                                                     §§goto(addr2001);
                                                                  }
                                                                  §§goto(addr1689);
                                                               }
                                                               §§goto(addr2087);
                                                            }
                                                            §§goto(addr1774);
                                                            §§goto(addr2156);
                                                         }
                                                         §§goto(addr2160);
                                                      }
                                                      addr2160:
                                                      return;
                                                   }
                                                   §§goto(addr548);
                                                }
                                             }
                                             addr467:
                                          }
                                          _loc12_ = §§pop();
                                          if(_loc35_ || param1)
                                          {
                                             addr279:
                                             §§push(this);
                                             §§push(this.§7!§);
                                             if(_loc35_)
                                             {
                                                §§push(§§pop() + _loc2_);
                                             }
                                             §§pop().§7!§ = §§pop();
                                             if(_loc35_)
                                             {
                                                addr289:
                                                while(true)
                                                {
                                                   §§push(this.§7!§);
                                                   if(_loc35_ || _loc2_)
                                                   {
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr478);
                                                }
                                                addr458:
                                             }
                                             §§goto(addr488);
                                          }
                                          while(true)
                                          {
                                             this.§+!A§(this.§!0§);
                                             if(!(_loc34_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   _loc4_ = this.§]=§[this.§,j§++] as §4!h§;
                                                   if(_loc35_)
                                                   {
                                                      this.initParticle(_loc4_);
                                                      while(true)
                                                      {
                                                         this.advanceParticle(_loc4_,this.§7!§);
                                                         loop3:
                                                         while(_loc35_)
                                                         {
                                                            §§push(_loc12_);
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr443:
                                                               while(true)
                                                               {
                                                                  _loc13_ = §§pop();
                                                               }
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(!(_loc35_ || _loc2_))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(_loc12_);
                                                               if(_loc35_ || param1)
                                                               {
                                                                  if(!_loc35_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(1 - this.§@b§);
                                                                  if(!_loc34_)
                                                                  {
                                                                     §§push(Math.random() * this.§@b§);
                                                                     if(_loc35_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * 2);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc34_)
                                                                        {
                                                                           addr425:
                                                                           §§push(§§pop() + this.§"!H§);
                                                                           if(_loc35_)
                                                                           {
                                                                              addr428:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           if(_loc35_)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              loop8:
                                                                              while(_loc35_ || _loc3_)
                                                                              {
                                                                                 do
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§"!H§);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc34_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() - _loc13_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§pop().§"!H§ = §§pop();
                                                                                    do
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§7!§);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc13_);
                                                                                       }
                                                                                       §§pop().§7!§ = §§pop();
                                                                                    }
                                                                                    while(!_loc35_);
                                                                                    
                                                                                    if(!(_loc34_ && this))
                                                                                    {
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 while(false);
                                                                                 
                                                                                 §§goto(addr458);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr443);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!isNaN(this.§@b§))
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           addr444:
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr444);
                                                }
                                                addr311:
                                             }
                                             §§goto(addr488);
                                          }
                                          addr300:
                                       }
                                       break;
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr488);
                              }
                              §§goto(addr468);
                           }
                           §§goto(addr467);
                        }
                        §§goto(addr279);
                     }
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc34_)
                           {
                              §§goto(addr300);
                           }
                           §§goto(addr478);
                        }
                        §§goto(addr311);
                        break loop0;
                     }
                     §§goto(addr478);
                     addr297:
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr297);
               }
            }
            §§goto(addr92);
         }
         addr92:
      }
      
      private function §=!?§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4!h§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,j§)
         {
            _loc3_ = this.§]=§[_loc2_];
            if(!(_loc5_ && param1))
            {
               this.§#^§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr60:
                  while(true)
                  {
                     this.§#^§[_loc2_ * 3 + 1] = _loc3_.y;
                     continue loop1;
                  }
               }
               addr90:
            }
            while(true)
            {
               _loc2_++;
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr90);
               }
               §§goto(addr60);
            }
         }
         if(_loc4_)
         {
            param1.transformVectors(this.§#^§,this.§<U§);
         }
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§ !-§(param1.§7!n§);
            do
            {
               loop1:
               while(true)
               {
                  if(this.§7!!§ == 0)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr35:
                        param2 = §§pop();
                        if(!(_loc7_ || param2))
                        {
                           continue;
                        }
                        addr43:
                        if(false)
                        {
                           continue loop1;
                        }
                        §§push(§`L§);
                        §§push(param2 == 1);
                        if(!_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop().§;<§(§§pop(),this.§5!6§.mipMapping,false,this.§=!W§,true));
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Context3D;
                        if((_loc4_ = param1.§5Y§) == null)
                        {
                           if(!_loc6_)
                           {
                              return;
                           }
                        }
                        var _loc5_:Vector.<Number> = !!this.§3!Z§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                        if(!(_loc6_ && param1))
                        {
                           if(param1.§;!p§ != this.§ !h§)
                           {
                              addr387:
                              this.§+!A§(0);
                              this.§ !h§ = param1.§;!p§;
                              addr381:
                              addr390:
                           }
                           if(!this.§+v§(_loc4_))
                           {
                              addr362:
                              this.§2!N§.uploadFromVector(this.§ !3§.§8q§,0,this.§7!!§ * 4);
                              if(_loc7_)
                              {
                                 this.§[P§.uploadFromVector(this.§ !3§.§3!+§,0,this.§7!!§ * 4);
                                 addr344:
                                 if(_loc7_)
                                 {
                                    addr324:
                                    _loc4_.setBlendFactors(this.§%r§,this.§6!h§);
                                    _loc4_.setProgram(§else§.§^!A§.§6"§(_loc3_));
                                    addr331:
                                    if(!_loc6_)
                                    {
                                       _loc4_.setTextureAt(0,this.§5!6§.getBase(_loc4_));
                                       _loc4_.setVertexBufferAt(0,this.§[P§,§=A§.§%F§,Context3DVertexBufferFormat.FLOAT_3);
                                       addr302:
                                       if(_loc7_)
                                       {
                                          _loc4_.setVertexBufferAt(1,this.§5!g§,§=A§.§<!?§,Context3DVertexBufferFormat.FLOAT_2);
                                          _loc4_.setVertexBufferAt(2,this.§2!N§,§=A§.§!"§,Context3DVertexBufferFormat.FLOAT_4);
                                          addr291:
                                          if(_loc7_ || param1)
                                          {
                                             _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7!n§,true);
                                             addr260:
                                             if(_loc7_)
                                             {
                                                _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                addr241:
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      _loc4_.drawTriangles(this.§6T§,0,this.§7!!§ * 2);
                                                      addr221:
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc4_.setVertexBufferAt(0,null);
                                                               addr199:
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc4_.setVertexBufferAt(1,null);
                                                                        addr176:
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           _loc4_.setVertexBufferAt(2,null);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!(_loc7_ || this))
                                                                              {
                                                                                 §§goto(addr199);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr291);
                                                addr262:
                                             }
                                             §§goto(addr390);
                                          }
                                          §§goto(addr331);
                                       }
                                       addr313:
                                       §§goto(addr313);
                                    }
                                 }
                                 §§goto(addr362);
                              }
                              §§goto(addr387);
                           }
                           §§goto(addr324);
                        }
                        §§goto(addr262);
                     }
                  }
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!(_loc6_ && param2))
                        {
                           addr34:
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr35);
                     }
                     §§goto(addr34);
                  }
                  §§goto(addr43);
               }
            }
            while(!_loc7_);
            
         }
      }
      
      public function get §+d§() : Boolean
      {
         return false;
      }
      
      public function get §!0§() : int
      {
         return this.§ !3§.§7?§ / 4;
      }
      
      public function get §2!0§() : int
      {
         return this.§,j§;
      }
      
      public function get §`E§() : Number
      {
         return this.§ P§;
      }
      
      public function set §`E§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ P§ = param1;
         }
      }
      
      public function get §1!%§() : Number
      {
         return this.§%Z§;
      }
      
      public function set §1!%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%Z§ = param1;
         }
      }
      
      public function get §]v§() : Number
      {
         return this.§8!c§;
      }
      
      public function set §]v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§8!c§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§5!6§;
      }
   }
}
