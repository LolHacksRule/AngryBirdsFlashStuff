package § !+§
{
   import §4v§.§40§;
   import §6;§.§%[§;
   import §6;§.§1!B§;
   import §6;§.§2^§;
   import §[!-§.§>'§;
   import §]!a§.Texture;
   import §]u§.§6J§;
   import §^a§.DisplayObject;
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
   
   public class §1!&§ extends DisplayObject implements §>'§
   {
       
      
      private var §7Y§:Texture;
      
      private var §3I§:Vector.<§]!N§>;
      
      private var §6!F§:Number;
      
      private var §,!U§:Vector.<Number>;
      
      private var §0N§:Vector.<Number>;
      
      private var §`§:§40§;
      
      private var §@M§:VertexBuffer3D;
      
      private var §2e§:VertexBuffer3D;
      
      private var §&2§:VertexBuffer3D;
      
      private var §`q§:Vector.<uint>;
      
      private var §!h§:IndexBuffer3D;
      
      private var §1!0§:int;
      
      private var §]o§:int;
      
      private var §65§:Number;
      
      protected var §;!E§:Number;
      
      private var §@p§:Number = 0.0;
      
      private var §',§:Number;
      
      protected var §5v§:Number;
      
      protected var §9!I§:Number;
      
      protected var §@!,§:Boolean;
      
      protected var §6W§:String;
      
      protected var §,!i§:String;
      
      protected var §#H§:String;
      
      private var §"`§:int = -1;
      
      private var §?V§:Boolean = false;
      
      private var §'+§:Number = 0.0;
      
      public function §1!&§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            loop0:
            while(param1 != null)
            {
               addr77:
               if(!(_loc7_ || this))
               {
                  continue;
               }
               this.§65§ = param2;
               loop7:
               for(; _loc7_ || param1; if(!(_loc7_ || this))
               {
                  continue;
               },addr42:,if(_loc7_ || param3)
               {
                  if(_loc7_)
                  {
                     this.§6!F§ = 0;
                     addr51:
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           if(false)
                           {
                              §§goto(addr29);
                           }
                           this.§5v§ = this.§9!I§ = 0;
                           if(!_loc8_)
                           {
                              §§push(this);
                              if(_loc7_)
                              {
                                 §§push(param5);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || param3)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             addr283:
                                             §§pop();
                                             §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                          }
                                       }
                                       §§pop().§,!i§ = §§pop();
                                       §§goto(addr288);
                                    }
                                 }
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr203);
                        }
                        while(true)
                        {
                           this.§`q§ = new Vector.<uint>(0);
                           if(!_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 §§goto(addr77);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§3I§ = new Vector.<§]!N§>(0,false);
                                    break loop7;
                                 }
                                 addr129:
                              }
                           }
                           break;
                           §§goto(addr51);
                        }
                        addr93:
                     }
                     §§goto(addr198);
                  }
                  break loop0;
               },while(true)
               {
                  if(!_loc8_)
                  {
                     this.§`§ = new §40§(0,this.§@!,§);
                     §§goto(addr93);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§@!,§ = param1.premultipliedAlpha;
                     }
                     addr134:
                  }
                  §§goto(addr129);
                  §§goto(addr42);
               },continue loop0,addr101:)
               {
                  while(true)
                  {
                     this.§',§ = 0;
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop7;
                  }
                  addr288:
                  §§push(this);
                  if(!(_loc8_ && param3))
                  {
                     §§push(param4);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && param1))
                        {
                           if(!§§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    addr236:
                                    if(this.§@!,§)
                                    {
                                       addr239:
                                       §§push(Context3DBlendFactor.ONE);
                                       if(!_loc8_)
                                       {
                                          addr248:
                                          §§pop().§6W§ = §§pop();
                                          addr249:
                                          if(param3 > 0)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   addr198:
                                                   this.§2,§(param3);
                                                   addr201:
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr249);
                                                   }
                                                   return;
                                                   addr203:
                                                }
                                                §§goto(addr288);
                                             }
                                          }
                                          §§goto(addr201);
                                          addr244:
                                       }
                                    }
                                    §§goto(addr248);
                                    §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                 }
                                 §§goto(addr239);
                              }
                           }
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr244);
                  }
                  §§goto(addr236);
               }
               while(true)
               {
                  this.§,!U§ = new Vector.<Number>();
                  if(_loc7_)
                  {
                     this.§0N§ = new Vector.<Number>();
                     §§goto(addr101);
                  }
                  §§goto(addr288);
                  §§goto(addr56);
               }
               addr56:
            }
            throw new ArgumentError("texture must not be null");
         }
         while(true)
         {
            this.§7Y§ = param1;
            §§goto(addr134);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§@M§)
            {
               while(true)
               {
                  this.§@M§.dispose();
                  addr138:
                  addr55:
                  while(true)
                  {
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  super.dispose();
                  addr72:
                  if(!(_loc1_ && _loc2_))
                  {
                     addr34:
                     if(!(_loc2_ || _loc2_))
                     {
                        loop7:
                        for(; !(_loc1_ && this); §§goto(addr34))
                        {
                           this.§!h§.dispose();
                           loop8:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§,!U§ = null;
                                    continue loop8;
                                 }
                                 return;
                                 addr73:
                              }
                              addr111:
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    if(this.§!h§)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr73);
                                 }
                              }
                              §§goto(addr138);
                           }
                           while(true)
                           {
                              this.§2e§.dispose();
                              break loop7;
                           }
                        }
                        loop13:
                        while(true)
                        {
                           addr104:
                           while(true)
                           {
                              if(this.§&2§)
                              {
                                 §§goto(addr108);
                              }
                              §§goto(addr85);
                              continue loop13;
                           }
                        }
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr46);
               }
            }
            while(true)
            {
               if(this.§2e§)
               {
                  §§goto(addr118);
               }
               §§goto(addr104);
               §§goto(addr138);
            }
         }
         §§goto(addr118);
      }
      
      protected function createParticle() : §]!N§
      {
         return new §]!N§();
      }
      
      protected function initParticle(param1:§]!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.x = this.§5v§;
            loop0:
            while(true)
            {
               param1.y = this.§9!I§;
               loop1:
               while(true)
               {
                  param1.§]!h§ = 0;
                  loop2:
                  while(true)
                  {
                     param1.§4A§ = 1;
                     while(!_loc3_)
                     {
                        param1.red = Math.random();
                        continue loop1;
                        addr71:
                        if(_loc2_ || this)
                        {
                           loop7:
                           while(true)
                           {
                              param1.alpha = 0;
                              if(_loc2_ || _loc3_)
                              {
                                 continue loop2;
                              }
                              addr84:
                              while(!(_loc3_ && _loc3_))
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr71);
                                 continue loop7;
                              }
                              while(true)
                              {
                                 param1.blue = Math.random();
                                 §§goto(addr47);
                              }
                              addr47:
                           }
                           return;
                           addr41:
                           addr78:
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function advanceParticle(param1:§]!N§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            §§push(param1.y);
            if(!(_loc4_ && param1))
            {
               §§push(param2);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            loop0:
            while(true)
            {
               §§push(param1);
               §§push(1);
               §§push(param1.§]!h§);
               if(_loc3_)
               {
                  §§push(§§pop() / param1.§4A§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(true)
               {
                  param1.scaleX = 1 - param1.alpha;
                  addr69:
                  while(!_loc4_)
                  {
                  }
                  addr49:
                  continue loop0;
                  while(_loc3_)
                  {
                     §§push(param1);
                     §§push(param1.§]!h§);
                     if(_loc3_ || param2)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§]!h§ = §§pop();
                     if(!_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr69);
                        }
                        return;
                        addr41:
                     }
                  }
               }
            }
         }
         while(true)
         {
            param1.scaleY = 1 - param1.alpha;
            §§goto(addr49);
         }
         §§goto(addr41);
      }
      
      private function §2,§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§9!&§);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§9!&§);
         if(_loc9_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§40§;
         (_loc4_ = new §40§(4)).setTexCoords(0,0,0);
         if(_loc9_ || param1)
         {
            _loc4_.setTexCoords(1,1,0);
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
               loop1:
               while(!(_loc8_ && param1))
               {
                  _loc4_.setTexCoords(3,1,1);
                  loop2:
                  while(true)
                  {
                     this.§7Y§.adjustVertexData(_loc4_,0,4);
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§3I§.fixed = false;
                           while(_loc9_)
                           {
                              this.§`q§.fixed = false;
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 break loop4;
                              }
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                              if(false)
                              {
                                 continue loop4;
                              }
                              §§push(_loc2_);
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              addr167:
                              §§push(_loc5_);
                              if(_loc9_ || _loc2_)
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(_loc9_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc9_ || _loc3_)
                                       {
                                          if(_loc9_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                addr196:
                                                if(_loc9_ || param1)
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            this.§3I§.fixed = true;
                                                            this.§`q§.fixed = true;
                                                            addr162:
                                                            if(_loc9_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  this.§?V§ = true;
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr290:
                                                                              §§push(_loc7_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr255:
                                                                                 if(§§pop() >= 3)
                                                                                 {
                                                                                    addr256:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       this.§`§.append(_loc4_);
                                                                                       addr262:
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          this.§`q§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                                                          addr242:
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             _loc5_++;
                                                                                             addr221:
                                                                                             §§goto(addr167);
                                                                                          }
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                       this.§3I§.push(this.createParticle());
                                                                                       _loc7_ = 0;
                                                                                       §§goto(addr290);
                                                                                       addr315:
                                                                                       addr307:
                                                                                    }
                                                                                    addr272:
                                                                                    §§goto(addr290);
                                                                                 }
                                                                                 this.§,!U§.push(0);
                                                                                 this.§0N§.push(0);
                                                                                 _loc7_++;
                                                                                 §§goto(addr272);
                                                                                 addr278:
                                                                                 addr286:
                                                                              }
                                                                              addr314:
                                                                              _loc6_ = §§pop() * 4;
                                                                              addr311:
                                                                              §§goto(addr315);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            addr218:
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr311);
                                             §§push(_loc5_);
                                          }
                                          §§goto(addr311);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr314);
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr290);
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private function §>H§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§?V§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§goto(addr32);
                  }
               }
               else
               {
                  addr40:
                  if(param1 == null)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr45);
                     }
                  }
                  §§push(this.§`§.§-Z§);
                  if(!(_loc3_ && this))
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc2_)
                  {
                     if(this.§@M§)
                     {
                        while(true)
                        {
                           this.§@M§.dispose();
                           addr275:
                           while(true)
                           {
                           }
                        }
                        addr272:
                     }
                     loop2:
                     while(true)
                     {
                        if(this.§2e§)
                        {
                           while(true)
                           {
                              this.§2e§.dispose();
                              addr268:
                              addr212:
                              while(true)
                              {
                              }
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 this.§2e§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§;!^§);
                                 loop12:
                                 for(; _loc4_ || param1; loop14:
                                 while(!(_loc3_ && this))
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    this.§&2§.uploadFromVector(this.§`§.§]!"§,0,_loc2_ * 4);
                                    while(!_loc3_)
                                    {
                                       this.§!h§ = param1.createIndexBuffer(_loc2_ * 6);
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc3_ && this)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop14;
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr175);
                                 })
                                 {
                                    this.§2e§.uploadFromVector(this.§`§.§[K§,0,_loc2_ * 4);
                                    loop13:
                                    while(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          this.§&2§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§%!;§);
                                          continue loop12;
                                       }
                                       addr245:
                                       while(true)
                                       {
                                          this.§&2§.dispose();
                                          break loop13;
                                       }
                                    }
                                    while(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(this.§!h§)
                                          {
                                             addr237:
                                             while(true)
                                             {
                                                this.§!h§.dispose();
                                                addr240:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr237:
                                          }
                                          while(true)
                                          {
                                             this.§@M§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§9!+§);
                                             addr232:
                                             while(true)
                                             {
                                                this.§@M§.uploadFromByteArray(this.§`§.§!2§,0,0,_loc2_ * 4);
                                                break loop12;
                                             }
                                             §§goto(addr237);
                                             §§goto(addr240);
                                          }
                                       }
                                    }
                                    §§goto(addr268);
                                 }
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr212);
                                    }
                                    else
                                    {
                                       §§goto(addr237);
                                    }
                                 }
                                 addr190:
                              }
                              §§goto(addr272);
                           }
                        }
                        while(true)
                        {
                           if(this.§&2§)
                           {
                              §§goto(addr245);
                           }
                           §§goto(addr233);
                           §§goto(addr268);
                        }
                        §§goto(addr275);
                     }
                  }
                  §§goto(addr237);
               }
               addr45:
               throw new §6J§();
            }
            addr32:
            return false;
         }
         §§goto(addr40);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§65§ != 0)
            {
               if(_loc2_)
               {
                  this.§',§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§',§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §?z§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc5_)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  param2.x = _loc4_.x;
                  loop1:
                  while(!(_loc6_ && param2))
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     while(_loc5_ || param1)
                     {
                        param2.width = 0;
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  addr109:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr109);
      }
      
      public function §6!9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§]!L§(null);
         }
         while(!_loc3_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'+§ = param1;
         }
      }
      
      private function §]!L§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §9!H§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]!N§ = null;
         var _loc2_:int = 0;
         loop0:
         for(; _loc2_ < this.§1!0§; if(true)
         {
            continue;
         },§§goto(addr54))
         {
            _loc3_ = this.§3I§[_loc2_];
            if(!(_loc4_ && this))
            {
               this.§,!U§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr54:
                  while(true)
                  {
                     this.§,!U§[_loc2_ * 3 + 1] = _loc3_.y;
                     addr65:
                     while(_loc5_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               _loc2_++;
               if(_loc5_)
               {
                  continue loop0;
               }
               §§goto(addr65);
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            param1.transformVectors(this.§,!U§,this.§0N§);
         }
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§]!L§(param1.§?#§);
         }
         do
         {
            while(this.§]o§ != 0)
            {
               while(true)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * this.alpha);
                     if(!(_loc6_ && param1))
                     {
                        addr34:
                        §§push(Number(§§pop()));
                     }
                     param2 = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr34);
               }
               if(!(_loc7_ || param1))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(§1!B§);
               §§push(param2 == 1);
               if(!(_loc6_ && param1))
               {
                  §§push(!§§pop());
               }
               §§push(§§pop().§ V§(§§pop(),this.§7Y§.mipMapping,false,this.§#H§,true));
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               var _loc4_:Context3D;
               if((_loc4_ = param1.§'!&§) == null)
               {
                  if(_loc7_ || param2)
                  {
                     return;
                  }
               }
               var _loc5_:Vector.<Number> = !!this.§@!,§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
               if(!(_loc6_ && this))
               {
                  if(param1.§?N§ != this.§"`§)
                  {
                     loop3:
                     while(true)
                     {
                        this.§2,§(0);
                        loop4:
                        while(true)
                        {
                           this.§"`§ = param1.§?N§;
                           addr396:
                           loop5:
                           while(true)
                           {
                              addr277:
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 continue loop4;
                              }
                              _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                              loop18:
                              while(!_loc6_)
                              {
                                 if(_loc7_)
                                 {
                                    _loc4_.drawTriangles(this.§!h§,0,this.§]o§ * 2);
                                    loop19:
                                    while(true)
                                    {
                                       _loc4_.setVertexBufferAt(0,null);
                                       loop20:
                                       while(_loc7_)
                                       {
                                          _loc4_.setVertexBufferAt(1,null);
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   addr212:
                                                   if(!(_loc7_ || this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop19;
                                             }
                                             continue loop20;
                                             addr226:
                                             _loc4_.setVertexBufferAt(2,null);
                                             if(_loc6_ && param1)
                                             {
                                                continue;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop18;
                                             }
                                             addr185:
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                return;
                                                addr192:
                                             }
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   _loc4_.setVertexBufferAt(2,this.§2e§,§40§.§[W§,Context3DVertexBufferFormat.FLOAT_4);
                                                   break loop20;
                                                }
                                                break;
                                                §§goto(addr185);
                                             }
                                             while(true)
                                             {
                                                _loc4_.setVertexBufferAt(1,this.§@M§,§40§.§9!i§,Context3DVertexBufferFormat.FLOAT_2);
                                                §§goto(addr308);
                                             }
                                             addr308:
                                             addr321:
                                          }
                                          loop17:
                                          while(true)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr277);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§2e§.uploadFromVector(this.§`§.§[K§,0,this.§]o§ * 4);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         this.§&2§.uploadFromVector(this.§`§.§]!"§,0,this.§]o§ * 4);
                                                         addr373:
                                                         while(true)
                                                         {
                                                            addr346:
                                                            while(true)
                                                            {
                                                               _loc4_.setBlendFactors(this.§6W§,this.§,!i§);
                                                               addr353:
                                                               while(_loc7_ || _loc3_)
                                                               {
                                                                  _loc4_.setProgram(§%[§.§`1§.§-!c§(_loc3_));
                                                                  break loop18;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr379:
                                                }
                                             }
                                             addr330:
                                             while(true)
                                             {
                                                _loc4_.setVertexBufferAt(0,this.§&2§,§40§.§]a§,Context3DVertexBufferFormat.FLOAT_3);
                                                §§goto(addr321);
                                                continue loop17;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§?#§,true);
                                          §§goto(addr268);
                                       }
                                    }
                                 }
                                 §§goto(addr373);
                              }
                              while(!(_loc6_ && param1))
                              {
                                 _loc4_.setTextureAt(0,this.§7Y§.getBase(_loc4_));
                                 §§goto(addr330);
                              }
                              §§goto(addr353);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!this.§>H§(_loc4_))
                     {
                        §§goto(addr379);
                     }
                     §§goto(addr346);
                     §§goto(addr396);
                  }
               }
               §§goto(addr192);
            }
         }
         while(_loc6_);
         
      }
      
      public function get §9p§() : Boolean
      {
         return false;
      }
      
      public function get §9!&§() : int
      {
         return this.§`§.§-Z§ / 4;
      }
      
      public function get §-!#§() : int
      {
         return this.§1!0§;
      }
      
      public function get §;!F§() : Number
      {
         return this.§65§;
      }
      
      public function set §;!F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§65§ = param1;
         }
      }
      
      public function get §"+§() : Number
      {
         return this.§5v§;
      }
      
      public function set §"+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5v§ = param1;
         }
      }
      
      public function get §57§() : Number
      {
         return this.§9!I§;
      }
      
      public function set §57§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!I§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§7Y§;
      }
   }
}
