package §!!I§
{
   import §;! §.§?!T§;
   import §=!S§.§]!G§;
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §`!M§.§ !7§;
   import §`C§.§'!!§;
   import §`C§.§'!N§;
   import §`C§.§9!'§;
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
   
   public class §2!7§ extends DisplayObject implements § !7§
   {
       
      
      private var §if§:Texture;
      
      private var §#r§:Vector.<§^!7§>;
      
      private var §3!=§:Number;
      
      private var §"6§:Vector.<Number>;
      
      private var §;!,§:Vector.<Number>;
      
      private var §6!3§:§?!T§;
      
      private var §+!@§:VertexBuffer3D;
      
      private var §&z§:VertexBuffer3D;
      
      private var §^!B§:VertexBuffer3D;
      
      private var §>w§:Vector.<uint>;
      
      private var §-!>§:IndexBuffer3D;
      
      private var §4k§:int;
      
      private var §"!@§:int;
      
      private var §0w§:Number;
      
      protected var §1G§:Number;
      
      private var §7!7§:Number = 0.0;
      
      private var §5m§:Number;
      
      protected var §`N§:Number;
      
      protected var §2+§:Number;
      
      protected var §'!P§:Boolean;
      
      protected var §0S§:String;
      
      protected var §[! §:String;
      
      protected var §5f§:String;
      
      private var §"!U§:int = -1;
      
      private var §#"§:Boolean = false;
      
      private var §6P§:Number = 0.0;
      
      public function §2!7§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            loop0:
            do
            {
               if(param1 == null)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  this.§if§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§'!P§ = param1.premultipliedAlpha;
                     if(_loc8_ || param2)
                     {
                        if(!_loc8_)
                        {
                           continue loop1;
                        }
                        this.§#r§ = new Vector.<§^!7§>(0,false);
                        loop3:
                        while(true)
                        {
                           this.§"6§ = new Vector.<Number>();
                           loop4:
                           for(; _loc8_; if(_loc7_ && param3)
                           {
                              continue;
                           },if(_loc7_ && param2)
                           {
                              continue loop2;
                           },this.§3!=§ = 0,if(!(_loc7_ && param2))
                           {
                              while(true)
                              {
                                 if(false)
                                 {
                                    §§goto(addr33);
                                 }
                                 else
                                 {
                                    this.§`N§ = this.§2+§ = 0;
                                    if(!_loc7_)
                                    {
                                       §§push(this);
                                       if(_loc8_)
                                       {
                                          §§push(param5);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop());
                                             if(_loc8_ || param3)
                                             {
                                                addr275:
                                                if(!§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr289:
                                                      §§pop();
                                                      §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                                   }
                                                }
                                                §§pop().§[! § = §§pop();
                                                §§goto(addr294);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr275);
                                       }
                                       §§goto(addr289);
                                    }
                                 }
                                 §§goto(addr294);
                              }
                              addr31:
                           },§§goto(addr260))
                           {
                              this.§;!,§ = new Vector.<Number>();
                              loop5:
                              while(true)
                              {
                                 this.§6!3§ = new §?!T§(0,this.§'!P§);
                                 while(true)
                                 {
                                    this.§>w§ = new Vector.<uint>(0);
                                    continue loop3;
                                    addr72:
                                    if(_loc8_ || param2)
                                    {
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             this.§5m§ = 0;
                                             if(_loc7_ && param1)
                                             {
                                                addr44:
                                                break;
                                             }
                                             if(!(_loc7_ && param2))
                                             {
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          loop11:
                                          while(param3 > 0)
                                          {
                                             if(_loc8_)
                                             {
                                                break loop2;
                                             }
                                             if(!_loc8_)
                                             {
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             addr294:
                                             addr294:
                                             while(true)
                                             {
                                                §§push(this);
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(param4);
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc8_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  if(this.§'!P§)
                                                                  {
                                                                     addr250:
                                                                     §§push(Context3DBlendFactor.ONE);
                                                                     if(!_loc8_)
                                                                     {
                                                                     }
                                                                     addr259:
                                                                     §§pop().§0S§ = §§pop();
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr259);
                                                                  §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr250);
                                             }
                                          }
                                          return;
                                          addr33:
                                          addr260:
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     break;
                  }
                  this.§@O§(param3);
                  §§goto(addr210);
               }
            }
            while(_loc7_ && param3);
            
            throw new ArgumentError("texture must not be null");
         }
         §§goto(addr31);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§+!@§)
            {
               while(true)
               {
                  this.§+!@§.dispose();
                  addr133:
                  addr106:
                  while(true)
                  {
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  this.§&z§.dispose();
                  loop2:
                  while(true)
                  {
                     addr83:
                     while(true)
                     {
                        if(this.§^!B§)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              this.§^!B§.dispose();
                           }
                           while(_loc2_)
                           {
                           }
                           §§goto(addr133);
                           addr97:
                        }
                        while(true)
                        {
                           if(this.§-!>§)
                           {
                              while(true)
                              {
                                 this.§-!>§.dispose();
                                 addr82:
                                 while(true)
                                 {
                                 }
                              }
                              addr79:
                           }
                           while(true)
                           {
                              this.§"6§ = null;
                              for(; !_loc1_; for(; _loc2_ || _loc2_; super.dispose(),if(!(_loc1_ && _loc2_))
                              {
                                 return;
                              })
                              {
                                 if(!_loc1_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr79);
                              })
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       this.§;!,§ = null;
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr82);
                           }
                        }
                     }
                  }
                  addr126:
               }
            }
            while(true)
            {
               if(this.§&z§)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr126);
               }
               §§goto(addr83);
               §§goto(addr133);
            }
         }
         §§goto(addr133);
      }
      
      protected function createParticle() : §^!7§
      {
         return new §^!7§();
      }
      
      protected function initParticle(param1:§^!7§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            param1.x = this.§`N§;
            while(true)
            {
               param1.y = this.§2+§;
            }
            addr121:
         }
         loop1:
         while(true)
         {
            param1.§[m§ = 0;
            while(_loc3_)
            {
               param1.§,l§ = 1;
               continue loop1;
               if(_loc3_ || param1)
               {
                  return;
               }
            }
            §§goto(addr121);
         }
      }
      
      protected function advanceParticle(param1:§^!7§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_ || this)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(param1);
            §§push(1);
            §§push(param1.§[m§);
            if(_loc4_)
            {
               §§push(§§pop() / param1.§,l§);
            }
            §§pop().alpha = §§pop() - §§pop();
            do
            {
               param1.scaleX = 1 - param1.alpha;
               loop2:
               while(true)
               {
                  param1.scaleY = 1 - param1.alpha;
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
            while(_loc3_ && this);
            
            return;
         }
      }
      
      private function §@O§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§^o§);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§^o§);
         if(_loc9_ || param1)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§?!T§;
         (_loc4_ = new §?!T§(4)).setTexCoords(0,0,0);
         if(!(_loc8_ && param1))
         {
            _loc4_.setTexCoords(1,1,0);
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
            }
            addr123:
         }
         while(true)
         {
            _loc4_.setTexCoords(3,1,1);
            loop2:
            while(true)
            {
               this.§if§.adjustVertexData(_loc4_,0,4);
               loop3:
               while(true)
               {
                  if(!(_loc9_ || param1))
                  {
                     continue loop2;
                  }
                  if(!_loc9_)
                  {
                     break;
                  }
                  do
                  {
                     this.§#r§.fixed = false;
                     continue loop3;
                  }
                  while(false);
                  
                  §§push(_loc2_);
                  if(_loc9_ || this)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  addr177:
                  §§push(_loc5_);
                  if(!(_loc8_ && this))
                  {
                     if(!(_loc8_ && param1))
                     {
                        §§push(_loc3_);
                        if(_loc9_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 if(_loc9_ || param1)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       this.§#r§.fixed = true;
                                       addr222:
                                       if(!_loc8_)
                                       {
                                          if(_loc9_ || _loc2_)
                                          {
                                             this.§>w§.fixed = true;
                                             addr170:
                                             if(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      this.§#"§ = true;
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr256:
                                                               addr278:
                                                               §§push(_loc7_);
                                                               §§push(3);
                                                               if(_loc9_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     addr262:
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           this.§6!3§.append(_loc4_);
                                                                           this.§>w§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                                           _loc5_++;
                                                                           addr234:
                                                                           §§goto(addr177);
                                                                           addr255:
                                                                           addr275:
                                                                        }
                                                                        this.§#r§.push(this.createParticle());
                                                                        addr295:
                                                                        §§push(0);
                                                                        if(_loc9_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           §§goto(addr256);
                                                                           addr298:
                                                                        }
                                                                        addr324:
                                                                        _loc6_ = §§pop();
                                                                        addr325:
                                                                        §§goto(addr325);
                                                                        addr305:
                                                                     }
                                                                     _loc7_++;
                                                                     §§goto(addr278);
                                                                     addr284:
                                                                  }
                                                                  this.§"6§.push(0);
                                                                  this.§;!,§.push(0);
                                                                  §§goto(addr284);
                                                                  addr292:
                                                               }
                                                               addr322:
                                                               §§goto(addr324);
                                                               §§push(int(§§pop() * §§pop()));
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr292);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr298);
                              }
                              §§goto(addr222);
                           }
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              §§goto(addr322);
                              §§push(4);
                           }
                           §§goto(addr324);
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr256);
               }
               §§goto(addr123);
            }
         }
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§#"§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr37);
                  }
               }
               if(param1 == null)
               {
                  if(!_loc3_)
                  {
                     throw new §]!G§();
                  }
               }
               §§push(this.§6!3§.§>"§);
               if(!_loc3_)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  if(this.§+!@§)
                  {
                     addr272:
                     while(true)
                     {
                        this.§+!@§.dispose();
                        addr275:
                        while(true)
                        {
                        }
                     }
                     addr272:
                  }
                  loop0:
                  while(true)
                  {
                     if(this.§&z§)
                     {
                        while(true)
                        {
                           this.§&z§.dispose();
                           addr268:
                           while(true)
                           {
                           }
                        }
                        addr255:
                     }
                     while(true)
                     {
                        if(this.§^!B§)
                        {
                           loop4:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 this.§^!B§.dispose();
                                 while(true)
                                 {
                                    addr98:
                                    if(_loc4_ || _loc2_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 addr250:
                              }
                              else
                              {
                                 §§goto(addr272);
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           if(this.§-!>§)
                           {
                              while(true)
                              {
                                 this.§-!>§.dispose();
                                 addr240:
                                 while(true)
                                 {
                                 }
                              }
                              addr237:
                           }
                           loop9:
                           while(true)
                           {
                              this.§+!@§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§@t§);
                              loop10:
                              while(true)
                              {
                                 this.§+!@§.uploadFromByteArray(this.§6!3§.§8!H§,0,0,_loc2_ * 4);
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       this.§&z§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§`2§);
                                       loop12:
                                       for(; _loc4_; if(_loc4_ || this)
                                       {
                                          this.§-!>§ = param1.createIndexBuffer(_loc2_ * 6);
                                          continue loop11;
                                       })
                                       {
                                          this.§&z§.uploadFromVector(this.§6!3§.§8l§,0,_loc2_ * 4);
                                          loop13:
                                          while(true)
                                          {
                                             this.§^!B§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§!!6§);
                                             loop14:
                                             while(!_loc3_)
                                             {
                                                this.§^!B§.uploadFromVector(this.§6!3§.§<!9§,0,_loc2_ * 4);
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      continue loop12;
                                                   }
                                                   continue loop14;
                                                   addr82:
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                continue loop12;
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr255);
                                    }
                                    §§goto(addr268);
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop11;
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                           §§goto(addr250);
                        }
                     }
                  }
               }
               §§goto(addr272);
            }
            §§goto(addr37);
         }
         addr37:
         return false;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§0w§ != 0)
            {
               if(!(_loc2_ && param1))
               {
                  this.§5m§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5m§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §=!;§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc6_ || this)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  param2.x = _loc4_.x;
                  loop1:
                  while(true)
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     while(!(_loc5_ && param1))
                     {
                        param2.width = 0;
                        while(!(_loc5_ && this))
                        {
                           param2.height = 0;
                           if(_loc6_ || param2)
                           {
                              if(!(_loc6_ || this))
                              {
                                 continue loop2;
                              }
                              if(!(_loc5_ && param2))
                              {
                                 return param2;
                                 addr78:
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr78);
      }
      
      public function §#N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.advanceTime(param1);
            do
            {
               this.§1!S§(null);
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6P§ = param1;
         }
      }
      
      private function §1!S§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc4_:§^!7§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§^!7§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:Number = NaN;
         if(!(_loc35_ && this))
         {
            §§push(Boolean(isNaN(this.§6P§)));
            if(_loc34_)
            {
               if(!§§pop())
               {
                  if(!_loc35_)
                  {
                     §§pop();
                     if(_loc34_)
                     {
                        §§push(this.§6P§);
                        if(_loc34_)
                        {
                           addr93:
                           if(§§pop() == 0)
                           {
                              if(_loc34_)
                              {
                                 return;
                              }
                              addr97:
                              §§push(this.§6P§);
                              if(_loc34_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr97);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc34_)
                        {
                           this.§6P§ = 0;
                           if(_loc34_ || _loc3_)
                           {
                              _loc2_ = Number(Math.min(0.2,_loc2_));
                           }
                        }
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc34_ || _loc2_)
                           {
                              §§push(this.§4k§);
                              if(!_loc35_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    addr315:
                                    if(!(_loc35_ && _loc2_))
                                    {
                                       §§push(this.§5m§);
                                       if(_loc34_)
                                       {
                                          §§push(0);
                                          if(_loc34_ || this)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc35_)
                                                {
                                                   §§push(1);
                                                   if(_loc34_)
                                                   {
                                                      §§push(§§pop() / this.§0w§);
                                                      if(_loc34_ || _loc2_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc35_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(_loc34_ || param1)
                                                            {
                                                               addr283:
                                                               §§push(this);
                                                               §§push(this.§3!=§);
                                                               if(!(_loc35_ && this))
                                                               {
                                                                  §§push(§§pop() + _loc2_);
                                                               }
                                                               §§pop().§3!=§ = §§pop();
                                                               if(_loc34_)
                                                               {
                                                                  addr298:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§3!=§);
                                                                     if(!(_loc35_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr477:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(_loc35_)
                                                                                 {
                                                                                 }
                                                                                 addr496:
                                                                                 break;
                                                                              }
                                                                              §§push(this.§4k§);
                                                                              if(!_loc35_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr497:
                                                                           var _loc5_:* = §§pop();
                                                                           §§push(this.§if§.width);
                                                                           if(!_loc35_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc8_:* = §§pop();
                                                                           §§push(this.§if§.height);
                                                                           if(!(_loc35_ && _loc2_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc9_:* = §§pop();
                                                                           if(!_loc35_)
                                                                           {
                                                                              this.§"!@§ = 0;
                                                                           }
                                                                           var _loc10_:Vector3D = new Vector3D();
                                                                           if(!(_loc35_ && this))
                                                                           {
                                                                              if(param1)
                                                                              {
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    addr537:
                                                                                    this.§4Y§(param1);
                                                                                    if(_loc34_ || param1)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          _loc14_ = §§pop();
                                                                                          if(_loc34_ || param1)
                                                                                          {
                                                                                             addr558:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                             }
                                                                                             addr2254:
                                                                                             return;
                                                                                             addr2250:
                                                                                          }
                                                                                          §§goto(addr2254);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < this.§4k§)
                                                                                          {
                                                                                             §§push((_loc4_ = this.§#r§[_loc14_]).x);
                                                                                             if(!(_loc35_ && _loc2_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc34_ || _loc2_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(!(_loc35_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc4_.y);
                                                                                                      loop4:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc35_ && this))
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            loop5:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     _loc10_.x = _loc6_;
                                                                                                                     loop7:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc10_.y = _loc7_;
                                                                                                                        if(!(_loc35_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(Number(this.§;!,§[_loc14_ * 3]));
                                                                                                                           loop8:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              if(_loc34_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(Number(this.§;!,§[_loc14_ * 3 + 1]));
                                                                                                                                 if(_loc34_)
                                                                                                                                 {
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       loop10:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.scaleX);
                                                                                                                                          if(!(_loc34_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop11:
                                                                                                                                          while(_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             loop12:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(_loc34_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                      addr1050:
                                                                                                                                                      addr2212:
                                                                                                                                                      loop14:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(_loc34_)
                                                                                                                                                         {
                                                                                                                                                            addr2139:
                                                                                                                                                            §§push(_loc4_.scaleY);
                                                                                                                                                            if(_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                               loop167:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  addr2145:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop123:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc25_ = §§pop();
                                                                                                                                                                        addr2147:
                                                                                                                                                                        loop124:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           addr2097:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr2100:
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr2102:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       break loop10;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr2101:
                                                                                                                                                                              }
                                                                                                                                                                              addr2106:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2110:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop167;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc26_ = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc35_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop12;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop117:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                            addr2151:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr2152:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc34_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop117;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr2207:
                                                                                                                                                                                                                  addr2207:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                     addr2208:
                                                                                                                                                                                                                     loop171:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                                                                                                                                        addr2179:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                                                                           addr2180:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop117;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop171;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr2167:
                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr2168:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            addr2170:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr2171:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                  break loop8;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr2169:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2102);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr2050:
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop124;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr2111:
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop14;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop123;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr2144:
                                                                                                                                                            }
                                                                                                                                                            loop112:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr2140:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  addr2141:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                     addr2142:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr2143:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr2144);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop112;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr2139:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      loop115:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         loop40:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                            if(_loc34_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr2221:
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                            }
                                                                                                                                                            addr2222:
                                                                                                                                                            loop41:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr2223:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr2224:
                                                                                                                                                                  loop42:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     loop43:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Math.abs(_loc18_ - _loc19_) > 0.5);
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop42;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        loop44:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr2194:
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§6!3§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    loop46:
                                                                                                                                                                                    while(!(_loc35_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc35_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc34_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1594:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc34_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      if(_loc34_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1620:
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§6#§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                  loop60:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§6!3§);
                                                                                                                                                                                                                        loop61:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc34_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                              loop62:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                                                                    loop63:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc35_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             loop64:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   loop65:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  loop67:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc34_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                           if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    loop68:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1547:
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             loop87:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1553:
                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1554:
                                                                                                                                                                                                                                                                                                   §§pop().§6#§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§6!3§);
                                                                                                                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1673:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop6;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr2094:
                                                                                                                                                                                                                                                                                                         loop30:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            addr1989:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1992:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                        loop33:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc34_ || this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop40;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                       loop34:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          loop35:
                                                                                                                                                                                                                                                                                                                                          while(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             loop36:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   loop137:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc28_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1934:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                            loop139:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                               addr1935:
                                                                                                                                                                                                                                                                                                                                                               addr1861:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  continue loop36;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               loop151:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc34_ || this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop139;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                        addr1873:
                                                                                                                                                                                                                                                                                                                                                                        while(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                              while(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 addr1948:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                loop147:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                      loop148:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            _loc29_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            addr1986:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                               while(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop151;
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1838:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop148;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr2093:
                                                                                                                                                                                                                                                                                                                                                                                                                           addr2092:
                                                                                                                                                                                                                                                                                                                                                                                                                           addr2091:
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1920:
                                                                                                                                                                                                                                                                                                                                                                                                                           addr2093:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1929:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    _loc30_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1931:
                                                                                                                                                                                                                                                                                                                                                                                                                                    loop158:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1720:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop137;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop158;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop137;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr2152);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc27_ = -§§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop148;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1838:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop36;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop147;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1986:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2106);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2093);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr1970:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr2097);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr2050);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr2071:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            break loop35;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2142);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr2082:
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2151);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2141);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr2072:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr2171);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr2069:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1970);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1947:
                                                                                                                                                                                                                                                                                                                                                                              addr1883:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2169);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1935);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr1872:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1912:
                                                                                                                                                                                                                                                                                                                                                                     while(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1920);
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr1912:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1948);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1934:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2180);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr2044:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2140);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr2091);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2139);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2105);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr2068);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2072);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2044);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2143);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1554);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1555:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1650:
                                                                                                                                                                                                                                                                                                while(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().§6#§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                   loop72:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr2195:
                                                                                                                                                                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop44;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop73:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + 4);
                                                                                                                                                                                                                                                                                                            if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1208:
                                                                                                                                                                                                                                                                                                                              _loc5_ = int(§§pop());
                                                                                                                                                                                                                                                                                                                              while(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop60;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1162:
                                                                                                                                                                                                                                                                                                                                       _loc14_++;
                                                                                                                                                                                                                                                                                                                                       addr1232:
                                                                                                                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break loop73;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop73;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr2249:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_.rotation);
                                                                                                                                                                                                                                                                                                                                          continue loop115;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                       addr1232:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1701);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1555);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop72;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 loop84:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1469:
                                                                                                                                                                                                                                                                                                                                          §§push(this.§6!3§);
                                                                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop61;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1238:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc34_ || this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(_loc34_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1428);
                                                                                                                                                                                                                                                                                                                                                   §§push(2);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1238);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                                                                                                                                                                             addr1418:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1250:
                                                                                                                                                                                                                                                                                                                                             §§push(3);
                                                                                                                                                                                                                                                                                                                                             if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop63;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                addr1429:
                                                                                                                                                                                                                                                                                                                                                while(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop65;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                     while(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§pop().§6#§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                           continue loop84;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1699);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1464);
                                                                                                                                                                                                                                                                                                                                                               addr1297:
                                                                                                                                                                                                                                                                                                                                                               if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop67;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1696);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1668);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1464);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop64;
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1250);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1428:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1662);
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                          addr1469:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr2208);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1931);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop87;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1386:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2092);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1861);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1720);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1741);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1766);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1838);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1208);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2250);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2207);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1698);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1547:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1671);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1649:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1650);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1700);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 addr1647:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                    addr1648:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1649);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1646:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1547);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1667);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1645:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1646);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1670);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1672);
                                                                                                                                                                                                                                                            if(_loc35_ && _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1362);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1648);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1647);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1644:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1645);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1643:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1644);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().§[!@§(§§pop(),§§pop(),_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                                                                                                                                                                                                                                    addr2230:
                                                                                                                                                                                                                                    §§goto(addr2249);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1642:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1643);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1684);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1715);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1710);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1713);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1712);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1620);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1709);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1714);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1620);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1711);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1594);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2230);
                                                                                                                                                                                    §§push(4);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1659);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2195);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2207);
                                                                                                                                                                        §§push(Number(Math.cos(_loc4_.rotation)));
                                                                                                                                                                     }
                                                                                                                                                                     continue loop41;
                                                                                                                                                                  }
                                                                                                                                                                  addr2224:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2193);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr749:
                                                                                                                                                      if(!(_loc34_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                      if(_loc34_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(!_loc35_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               if(!(_loc35_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  loop173:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     loop175:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        loop176:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           loop177:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop179:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc35_ && _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop177;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc35_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(_loc34_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr607:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                               if(_loc34_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc34_ || this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop6;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                                                                     if(_loc34_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr641:
                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop7;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                    if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                          if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop176;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop25:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                             if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop26:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(1.1);
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr856:
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§9!'§.§7!Z§)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                                                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(§9!'§.§7!Z§.§>]§);
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(1.1);
                                                                                                                                                                                                                                                                                                                           if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr806:
                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr749);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1868);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2208);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr832:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1740);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2100);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2141);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 loop19:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(1.1);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                          while(_loc34_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                addr967:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr969:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc34_ || this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(-1.1);
                                                                                                                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2071);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop179;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          loop18:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1029:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(-1.1);
                                                                                                                                                                                                                                                                                                                                                      if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr965);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break loop26;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr983:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2031);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2067);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1232);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2167);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                           addr789:
                                                                                                                                                                                                                                                                                                                           if(_loc35_ && _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                              if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                 continue loop175;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1935);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1838);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1945);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1025:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                        §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2093);
                                                                                                                                                                                                                                                                                                                  §§goto(addr1029);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2110);
                                                                                                                                                                                                                                                                                                               addr903:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1929);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2141);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1934);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                                                                   addr890:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr903);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr969);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1232);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1117:
                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                          if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1135:
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   var _loc32_:*;
                                                                                                                                                                                                                                                                                                   §§push((_loc32_ = this).§"!@§);
                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   var _loc33_:* = §§pop();
                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc32_.§"!@§ = _loc33_;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1160:
                                                                                                                                                                                                                                                                                                      §§goto(addr2228);
                                                                                                                                                                                                                                                                                                      §§push(this.§6!3§);
                                                                                                                                                                                                                                                                                                      addr1160:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2147);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1855);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1162);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2221);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1469);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1117);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1135);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr2167);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1934);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1050);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1986);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr983);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2224);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr856);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr967);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2223);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2194);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1919);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1807);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2093);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop176;
                                                                                                                                                                                                                           addr645:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1117);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1160);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr968);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2222);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr641);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1117);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2224);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1785);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1208);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1717);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2224);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr607);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop173;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2147);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2222);
                                                                                                                                                                              §§goto(addr2223);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2222);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr890);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1992);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2100);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(2);
                                                                                                                                                addr1016:
                                                                                                                                                break;
                                                                                                                                                if(!(_loc34_ || this))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1025);
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr2060);
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr2104);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1989);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(!(_loc35_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§goto(addr2139);
                                                                                                                                 §§push(_loc23_);
                                                                                                                              }
                                                                                                                              §§goto(addr2145);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1162);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr1634);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr2212);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr2094);
                                                                                                }
                                                                                                §§goto(addr2207);
                                                                                             }
                                                                                             §§goto(addr832);
                                                                                          }
                                                                                          §§goto(addr2254);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           §§goto(addr537);
                                                                        }
                                                                        addr476:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr482:
                                                                  if(§§pop() != Number.MAX_VALUE)
                                                                  {
                                                                     if(!_loc35_)
                                                                     {
                                                                        this.§5m§ = Math.max(0,this.§5m§ - _loc2_);
                                                                     }
                                                                  }
                                                                  §§goto(addr496);
                                                                  addr467:
                                                               }
                                                               §§goto(addr482);
                                                               §§push(this.§5m§);
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr476);
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                   §§goto(addr497);
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr496);
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr298);
                                    }
                                    while(true)
                                    {
                                       _loc4_ = this.§#r§[this.§4k§++] as §^!7§;
                                       if(!_loc35_)
                                       {
                                          this.initParticle(_loc4_);
                                       }
                                       while(true)
                                       {
                                          this.advanceParticle(_loc4_,this.§3!=§);
                                          loop184:
                                          while(!(_loc35_ && this))
                                          {
                                             §§push(_loc12_);
                                             if(!(_loc35_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             loop185:
                                             while(true)
                                             {
                                                _loc13_ = §§pop();
                                                loop186:
                                                while(!_loc35_)
                                                {
                                                   if(!isNaN(this.§1G§))
                                                   {
                                                      if(!_loc35_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!(_loc35_ && _loc3_))
                                                         {
                                                            if(!_loc34_)
                                                            {
                                                               continue loop185;
                                                            }
                                                            §§push(1 - this.§1G§);
                                                            if(_loc34_ || _loc2_)
                                                            {
                                                               §§push(Math.random() * this.§1G§);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(§§pop() * 2);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc34_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc35_)
                                                                  {
                                                                     addr429:
                                                                     §§push(§§pop() + this.§7!7§);
                                                                     if(_loc34_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  _loc13_ = §§pop();
                                                                  loop187:
                                                                  while(true)
                                                                  {
                                                                     addr354:
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§7!7§);
                                                                        if(!(_loc35_ && _loc3_))
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!(_loc35_ && this))
                                                                           {
                                                                              §§push(§§pop() - _loc13_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§7!7§ = §§pop();
                                                                        do
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§3!=§);
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(§§pop() - _loc13_);
                                                                           }
                                                                           §§pop().§3!=§ = §§pop();
                                                                        }
                                                                        while(!_loc34_);
                                                                        
                                                                        if(_loc35_)
                                                                        {
                                                                           continue loop187;
                                                                        }
                                                                        if(_loc35_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr467);
                                                                     }
                                                                     continue loop186;
                                                                  }
                                                                  addr434:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr429);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                continue loop184;
                                             }
                                          }
                                       }
                                    }
                                    addr315:
                                 }
                                 else
                                 {
                                    if((_loc4_ = this.§#r§[_loc3_]).§[m§ < _loc4_.§,l§)
                                    {
                                       if(_loc34_ || _loc2_)
                                       {
                                          this.advanceParticle(_loc4_,_loc2_);
                                          if(_loc34_)
                                          {
                                             _loc3_++;
                                             if(_loc35_)
                                             {
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             addr165:
                                             _loc11_ = this.§#r§[this.§4k§ - 1];
                                             if(!(_loc35_ && _loc3_))
                                             {
                                                this.§#r§[this.§4k§ - 1] = _loc4_;
                                                if(_loc34_ || param1)
                                                {
                                                   this.§#r§[_loc3_] = _loc11_;
                                                   addr199:
                                                   §§push((_loc32_ = this).§4k§);
                                                   if(_loc34_ || this)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc33_ = §§pop();
                                                   if(!(_loc35_ && param1))
                                                   {
                                                      _loc32_.§4k§ = _loc33_;
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr199);
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc3_ != this.§4k§ - 1)
                                    {
                                       if(_loc35_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr199);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc35_)
                                    {
                                       this.§@O§(this.§^o§);
                                       if(_loc34_)
                                       {
                                          §§goto(addr315);
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr315);
                              }
                              §§goto(addr283);
                              addr306:
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr306);
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr97);
      }
      
      private function §4Y§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§^!7§ = null;
         var _loc2_:int = 0;
         loop0:
         for(; _loc2_ < this.§4k§; if(true)
         {
            continue;
         },§§goto(addr48))
         {
            _loc3_ = this.§#r§[_loc2_];
            if(_loc4_)
            {
               this.§"6§[_loc2_ * 3] = _loc3_.x;
            }
            loop1:
            while(true)
            {
               addr48:
               while(true)
               {
                  this.§"6§[_loc2_ * 3 + 1] = _loc3_.y;
                  while(_loc4_)
                  {
                     _loc2_++;
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(!_loc5_)
         {
            param1.transformVectors(this.§"6§,this.§;!,§);
         }
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§1!S§(param1.§]!I§);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(this.§"!@§ == 0)
                  {
                     if(_loc7_ || this)
                     {
                        break;
                     }
                     loop2:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(param2);
                           if(_loc7_)
                           {
                              §§push(§§pop() * this.alpha);
                              if(_loc7_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           if(_loc7_ || this)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        §§push(§'!!§);
                        §§push(param2 == 1);
                        if(_loc7_ || this)
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop().§ !S§(§§pop(),this.§if§.mipMapping,false,this.§5f§,true));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Context3D;
                        if((_loc4_ = param1.§+!&§) == null)
                        {
                           if(_loc7_ || this)
                           {
                              return;
                           }
                        }
                        var _loc5_:Vector.<Number> = !!this.§'!P§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                        if(!_loc6_)
                        {
                           if(param1.§6!V§ != this.§"!U§)
                           {
                              while(true)
                              {
                                 this.§@O§(0);
                                 addr420:
                                 while(true)
                                 {
                                    this.§"!U§ = param1.§6!V§;
                                    addr401:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr417:
                           }
                           loop8:
                           while(true)
                           {
                              if(!this.§<!R§(_loc4_))
                              {
                                 loop9:
                                 while(true)
                                 {
                                    this.§&z§.uploadFromVector(this.§6!3§.§8l§,0,this.§"!@§ * 4);
                                    addr395:
                                    while(true)
                                    {
                                       this.§^!B§.uploadFromVector(this.§6!3§.§<!9§,0,this.§"!@§ * 4);
                                       continue loop9;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc4_.setBlendFactors(this.§0S§,this.§[! §);
                                 loop13:
                                 while(true)
                                 {
                                    _loc4_.setProgram(§9!'§.§7!Z§.§@!O§(_loc3_));
                                    loop14:
                                    while(true)
                                    {
                                       _loc4_.setTextureAt(0,this.§if§.getBase(_loc4_));
                                       while(true)
                                       {
                                          _loc4_.setVertexBufferAt(0,this.§^!B§,§?!T§.§94§,Context3DVertexBufferFormat.FLOAT_3);
                                          addr333:
                                          loop20:
                                          for(; _loc7_ || _loc3_; while(true)
                                          {
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop20;
                                             }
                                             addr252:
                                             if(!(_loc6_ && param2))
                                             {
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop13;
                                                }
                                                if(!(_loc6_ && param2))
                                                {
                                                   _loc4_.setVertexBufferAt(0,null);
                                                   continue;
                                                }
                                                §§goto(addr395);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                   continue loop20;
                                                   §§goto(addr252);
                                                }
                                                addr300:
                                             }
                                          },continue loop14)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc6_)
                                             {
                                                _loc4_.drawTriangles(this.§-!>§,0,this.§"!@§ * 2);
                                                continue;
                                             }
                                             §§goto(addr417);
                                          }
                                          while(true)
                                          {
                                             _loc4_.setVertexBufferAt(1,this.§+!@§,§?!T§.§0a§,Context3DVertexBufferFormat.FLOAT_2);
                                             while(true)
                                             {
                                                _loc4_.setVertexBufferAt(2,this.§&z§,§?!T§.§&!E§,Context3DVertexBufferFormat.FLOAT_4);
                                                addr180:
                                                if(!(_loc7_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr187);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr311);
                     }
                     continue loop0;
                  }
                  §§goto(addr20);
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function get §@@§() : Boolean
      {
         return false;
      }
      
      public function get §^o§() : int
      {
         return this.§6!3§.§>"§ / 4;
      }
      
      public function get §?'§() : int
      {
         return this.§4k§;
      }
      
      public function get §[!W§() : Number
      {
         return this.§0w§;
      }
      
      public function set §[!W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0w§ = param1;
         }
      }
      
      public function get §%?§() : Number
      {
         return this.§`N§;
      }
      
      public function set §%?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`N§ = param1;
         }
      }
      
      public function get §"§() : Number
      {
         return this.§2+§;
      }
      
      public function set §"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§2+§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§if§;
      }
   }
}
