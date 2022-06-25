package §4!<§
{
   import §"v§.§`!M§;
   import §0P§.QuadBatch;
   import §0P§.RenderSupport;
   import §0P§.Starling;
   import §2!9§.§"m§;
   import §6!7§.DisplayObject;
   import §7i§.Texture;
   import §8g§.VertexData;
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
   
   public class ParticleSystem extends DisplayObject implements §"m§
   {
       
      
      private var §5@§:Texture;
      
      private var §7D§:Vector.<§0!W§>;
      
      private var §3!2§:Number;
      
      private var §-B§:Vector.<Number>;
      
      private var §`i§:Vector.<Number>;
      
      private var §;H§:VertexData;
      
      private var §"-§:VertexBuffer3D;
      
      private var §-!^§:VertexBuffer3D;
      
      private var §8!F§:VertexBuffer3D;
      
      private var §3k§:Vector.<uint>;
      
      private var §%!Z§:IndexBuffer3D;
      
      private var §>!e§:int;
      
      private var §9!`§:int;
      
      private var §63§:Number;
      
      protected var §^4§:Number;
      
      private var §[!g§:Number = 0.0;
      
      private var §^X§:Number;
      
      protected var §]W§:Number;
      
      protected var §+!6§:Number;
      
      protected var §1y§:Boolean;
      
      protected var §?`§:String;
      
      protected var §@f§:String;
      
      protected var § !3§:String;
      
      private var §7J§:int = -1;
      
      private var §#!!§:Boolean = false;
      
      private var §[k§:Number = 0.0;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc8_ || param2)
                  {
                     throw new ArgumentError("texture must not be null");
                  }
                  addr183:
                  §§push(this);
                  if(!(_loc7_ && param3))
                  {
                     §§push(param5);
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop());
                        if(_loc8_ || param1)
                        {
                           if(!§§pop())
                           {
                              if(_loc7_ && param2)
                              {
                              }
                              addr306:
                              §§pop().§@f§ = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(this);
                                 if(_loc8_)
                                 {
                                    §§push(param4);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                addr231:
                                                §§pop();
                                                if(!_loc7_)
                                                {
                                                   if(this.§1y§)
                                                   {
                                                      addr237:
                                                      §§push(Context3DBlendFactor.ONE);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         addr248:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                   }
                                                }
                                                §§goto(addr237);
                                             }
                                          }
                                          §§pop().§?`§ = §§pop();
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(param3 <= 0)
                                                {
                                                   break;
                                                }
                                                if(!_loc7_)
                                                {
                                                   addr194:
                                                   this.§[s§(param3);
                                                }
                                                if(_loc8_)
                                                {
                                                   addr200:
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                          return;
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr237);
                              }
                              addr307:
                           }
                           §§goto(addr306);
                        }
                        §§pop();
                        addr302:
                        §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                     }
                     §§goto(addr306);
                  }
                  §§goto(addr302);
                  addr183:
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     this.§5@§ = param1;
                     if(_loc7_ && param1)
                     {
                        break;
                     }
                     this.§1y§ = param1.premultipliedAlpha;
                     loop2:
                     for(; _loc8_; while(true)
                     {
                        if(!(_loc7_ && param3))
                        {
                           this.§3k§ = new Vector.<uint>(0);
                           if(!_loc8_)
                           {
                              break;
                           }
                           this.§63§ = param2;
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                           continue;
                        }
                        continue loop2;
                     },§§goto(addr307))
                     {
                        this.§7D§ = new Vector.<§0!W§>(0,false);
                        while(true)
                        {
                           this.§-B§ = new Vector.<Number>();
                           if(!_loc8_)
                           {
                              break;
                           }
                           this.§`i§ = new Vector.<Number>();
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                           if(!_loc7_)
                           {
                              this.§;H§ = new VertexData(0,this.§1y§);
                              continue loop2;
                           }
                        }
                        §§goto(addr200);
                     }
                  }
               }
               §§goto(addr194);
            }
         }
         §§goto(addr183);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§"-§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§"-§.dispose();
                     addr163:
                     while(true)
                     {
                     }
                  }
                  addr159:
               }
               while(true)
               {
                  §§push(Boolean(this.§-!^§));
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§-!^§.dispose();
                           addr154:
                           while(true)
                           {
                           }
                        }
                        addr150:
                     }
                     while(true)
                     {
                        §§push(Boolean(this.§8!F§));
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           loop9:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§8!F§.dispose();
                                    loop10:
                                    while(true)
                                    {
                                       continue loop8;
                                       addr68:
                                       if(_loc1_ && this)
                                       {
                                          continue;
                                       }
                                       this.§`i§ = null;
                                       loop16:
                                       while(_loc2_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             super.dispose();
                                             if(_loc1_ && this)
                                             {
                                                continue loop16;
                                             }
                                             if(!_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr163);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc1_ && _loc1_)
                                                   {
                                                      break loop9;
                                                   }
                                                   this.§%!Z§.dispose();
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§-B§ = null;
                                                            break loop16;
                                                         }
                                                         continue loop10;
                                                         addr57:
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                addr107:
                                             }
                                          }
                                          return;
                                       }
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          §§goto(addr68);
                                          §§goto(addr49);
                                       }
                                       addr49:
                                       §§goto(addr118);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr159);
                                 }
                              }
                              else
                              {
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr154);
                        }
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr57);
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      protected function createParticle() : §0!W§
      {
         return new §0!W§();
      }
      
      protected function initParticle(param1:§0!W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.x = this.§]W§;
            loop0:
            while(true)
            {
               param1.y = this.§+!6§;
               loop1:
               while(true)
               {
                  param1.§6§ = 0;
                  addr105:
                  if(_loc2_ || _loc3_)
                  {
                     param1.red = Math.random();
                     while(_loc2_)
                     {
                        param1.green = Math.random();
                        loop5:
                        do
                        {
                           param1.blue = Math.random();
                           addr60:
                           while(!(_loc3_ && param1))
                           {
                              param1.alpha = 0;
                              if(_loc2_ || param1)
                              {
                                 continue loop5;
                              }
                           }
                           loop3:
                           while(true)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr105);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    param1.§?!D§ = 1;
                                    continue loop3;
                                 }
                                 addr117:
                              }
                           }
                           continue loop1;
                        }
                        while(!_loc2_);
                        
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      protected function advanceParticle(param1:§0!W§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_)
            {
               §§push(param2);
               if(!(_loc3_ && param2))
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
               §§push(param1.§6§);
               if(!(_loc3_ && param2))
               {
                  §§push(§§pop() / param1.§?!D§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(!_loc3_)
               {
                  while(_loc4_ || this)
                  {
                     param1.scaleY = 1 - param1.alpha;
                     while(_loc4_)
                     {
                        §§push(param1);
                        §§push(param1.§6§);
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop() + param2);
                        }
                        §§pop().§6§ = §§pop();
                        if(!(_loc3_ && param2))
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            param1.scaleX = 1 - param1.alpha;
            §§goto(addr78);
         }
      }
      
      private function §[s§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§6!-§);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§6!-§);
         if(!_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:VertexData = new VertexData(4);
         if(!_loc8_)
         {
            _loc4_.setTexCoords(0,0,0);
            loop0:
            while(true)
            {
               _loc4_.setTexCoords(1,1,0);
               loop1:
               while(true)
               {
                  _loc4_.setTexCoords(2,0,1);
                  while(!_loc8_)
                  {
                     _loc4_.setTexCoords(3,1,1);
                     while(true)
                     {
                        this.§5@§.adjustVertexData(_loc4_,0,4);
                     }
                     addr61:
                     if(!(_loc9_ || param1))
                     {
                        continue;
                     }
                     if(_loc8_)
                     {
                        continue loop1;
                     }
                     this.§3k§.fixed = false;
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 this.§7D§.fixed = false;
                                 addr59:
                                 while(_loc9_)
                                 {
                                    §§goto(addr61);
                                 }
                                 §§goto(addr87);
                              }
                              addr54:
                           }
                           §§push(_loc2_);
                           if(!_loc8_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc9_ || param1)
                              {
                                 if(!_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc8_)
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   this.§7D§.fixed = true;
                                                   loop9:
                                                   while(!(_loc8_ && this))
                                                   {
                                                      this.§3k§.fixed = true;
                                                      loop10:
                                                      for(; _loc9_ || _loc3_; this.§#!!§ = true,if(!(_loc9_ || _loc3_))
                                                      {
                                                         continue;
                                                      },if(!(_loc9_ || _loc2_))
                                                      {
                                                         continue loop9;
                                                      },if(!_loc9_)
                                                      {
                                                         continue loop8;
                                                      },if(_loc9_)
                                                      {
                                                         break loop7;
                                                      },§§goto(addr314))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            this.§;H§.append(_loc4_);
                                                            addr290:
                                                            while(true)
                                                            {
                                                               this.§3k§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                               break loop9;
                                                            }
                                                            addr273:
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 addr241:
                                                                                 §§push(int(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    break loop10;
                                                                                 }
                                                                                 addr241:
                                                                              }
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr300:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc8_ && param1))
                                                                                          {
                                                                                             addr307:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr283:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(3);
                                                                                                   addr284:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      this.§-B§.push(0);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             addr281:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                this.§`i§.push(0);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   addr293:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr342:
                                                                                                               while(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                            }
                                                                                                            addr341:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                            }
                                                                                                            addr364:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§7D§.push(this.createParticle());
                                                                                                            addr357:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr325);
                                                                                                }
                                                                                                addr325:
                                                                                                addr314:
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr299:
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                           }
                                                                           §§goto(addr299);
                                                                        }
                                                                        §§goto(addr283);
                                                                     }
                                                                     addr219:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                        addr362:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr361:
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                      }
                                                      while(!(_loc9_ || this))
                                                      {
                                                         §§goto(addr300);
                                                      }
                                                      continue loop7;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc5_);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr362);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr241);
                           }
                           return;
                        }
                        while(true)
                        {
                           §§goto(addr54);
                        }
                        addr79:
                     }
                     §§goto(addr59);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§#!!§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(false);
                     }
                     else
                     {
                        §§goto(addr43);
                     }
                  }
                  else
                  {
                     if(param1 == null)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr43);
                        }
                     }
                     §§push(this.§;H§.§>!B§);
                     if(_loc4_)
                     {
                        §§push(int(§§pop() / 4));
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc3_)
                     {
                        §§push(Boolean(this.§"-§));
                        loop0:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§"-§.dispose();
                                 addr286:
                                 while(true)
                                 {
                                 }
                              }
                              addr282:
                           }
                           while(true)
                           {
                              §§push(Boolean(this.§-!^§));
                              while(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§-!^§.dispose();
                                          addr277:
                                          while(true)
                                          {
                                          }
                                          addr277:
                                       }
                                       else
                                       {
                                          §§goto(addr282);
                                       }
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr286);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr258);
                                    §§goto(addr277);
                                 }
                                 if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr239);
                                 }
                                 §§goto(addr208);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr43);
               }
            }
            return §§pop();
         }
         addr43:
         throw new §`!M§();
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§63§ != 0)
            {
               if(_loc3_)
               {
                  addr30:
                  this.§^X§ = param1;
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^X§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §[!4§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!_loc6_)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  param2.x = _loc4_.x;
                  while(true)
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     while(!_loc6_)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        param2.width = 0;
                        while(!(_loc6_ && param2))
                        {
                           param2.height = 0;
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 return param2;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr106);
      }
      
      public function §^!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
            do
            {
               this.§3!B§(null);
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[k§ = param1;
         }
      }
      
      private function §3!B§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc4_:§0!W§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§0!W§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         if(!_loc34_)
         {
            §§push(Boolean(isNaN(this.§[k§)));
            if(_loc35_)
            {
               §§push(§§pop());
               if(_loc35_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  if(_loc35_)
                  {
                     §§pop();
                     if(_loc35_ || param1)
                     {
                        addr91:
                        §§push(this.§[k§);
                        if(_loc35_ || _loc2_)
                        {
                           §§push(§§pop() == 0);
                           if(_loc35_)
                           {
                              addr105:
                              if(§§pop())
                              {
                                 if(!_loc34_)
                                 {
                                    §§goto(addr108);
                                 }
                              }
                              §§push(this.§[k§);
                              if(_loc35_)
                              {
                                 addr113:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              if(_loc35_ || _loc2_)
                              {
                                 this.§[k§ = 0;
                                 if(!_loc34_)
                                 {
                                    _loc2_ = Number(Math.min(0.2,_loc2_));
                                 }
                              }
                              §§push(0);
                              if(_loc35_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              loop0:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc35_)
                                 {
                                    §§push(this.§>!e§);
                                    if(_loc35_ || this)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc34_ && _loc2_))
                                          {
                                             §§push(this.§^X§);
                                             if(_loc35_)
                                             {
                                                §§push(0);
                                                if(_loc35_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc34_)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc34_ && this))
                                                         {
                                                            §§push(§§pop() / this.§63§);
                                                            if(_loc35_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc34_)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  if(_loc35_)
                                                                  {
                                                                     addr304:
                                                                     §§push(this);
                                                                     §§push(this.§3!2§);
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(§§pop() + _loc2_);
                                                                     }
                                                                     §§pop().§3!2§ = §§pop();
                                                                     if(!(_loc34_ && _loc3_))
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§3!2§);
                                                                           if(_loc35_ || this)
                                                                           {
                                                                              addr533:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 addr534:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       if(_loc34_)
                                                                                       {
                                                                                       }
                                                                                       addr560:
                                                                                       §§push(0);
                                                                                       if(!(_loc34_ && _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    §§push(this.§>!e§);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6!-§);
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!_loc34_)
                                                                                                {
                                                                                                   this.§[s§(this.§6!-§);
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = this.§7D§[this.§>!e§++] as §0!W§;
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         this.initParticle(_loc4_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.advanceParticle(_loc4_,this.§3!2§);
                                                                                                            loop201:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               loop202:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop203:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     loop204:
                                                                                                                     while(!_loc34_)
                                                                                                                     {
                                                                                                                        if(!isNaN(this.§^4§))
                                                                                                                        {
                                                                                                                           loop207:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(!(_loc34_ && this))
                                                                                                                              {
                                                                                                                                 §§push(1 - this.§^4§);
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    §§push(Math.random() * this.§^4§);
                                                                                                                                    if(!(_loc34_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc35_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc34_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          continue loop202;
                                                                                                                                       }
                                                                                                                                       addr500:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          continue loop203;
                                                                                                                                       }
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       loop208:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr404:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§[!g§);
                                                                                                                                             if(_loc35_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(_loc35_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc13_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().§[!g§ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc34_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                continue loop207;
                                                                                                                                             }
                                                                                                                                             continue loop208;
                                                                                                                                          }
                                                                                                                                          continue loop204;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr500);
                                                                                                                                 }
                                                                                                                                 addr491:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc34_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr500);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr500);
                                                                                                                           }
                                                                                                                           addr437:
                                                                                                                        }
                                                                                                                        §§goto(addr404);
                                                                                                                     }
                                                                                                                     continue loop201;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(!(_loc35_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(true)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            §§goto(addr404);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr437);
                                                                                                   }
                                                                                                   addr337:
                                                                                                }
                                                                                                break loop1;
                                                                                             }
                                                                                             §§goto(addr337);
                                                                                          }
                                                                                       }
                                                                                       addr537:
                                                                                       §§push(this.§^X§);
                                                                                       break loop2;
                                                                                       addr325:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              addr533:
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr539:
                                                                        if(§§pop() != Number.MAX_VALUE)
                                                                        {
                                                                           if(_loc35_ || _loc3_)
                                                                           {
                                                                              this.§^X§ = Math.max(0,this.§^X§ - _loc2_);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr560);
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                               §§goto(addr539);
                                                            }
                                                            §§goto(addr533);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr560);
                                                }
                                                §§goto(addr534);
                                             }
                                             §§goto(addr533);
                                          }
                                          §§goto(addr337);
                                       }
                                       else
                                       {
                                          _loc4_ = this.§7D§[_loc3_];
                                          if(_loc35_ || param1)
                                          {
                                             if(_loc4_.§6§ < _loc4_.§?!D§)
                                             {
                                                if(!(_loc34_ && param1))
                                                {
                                                   this.advanceParticle(_loc4_,_loc2_);
                                                   if(_loc34_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc3_);
                                                   if(!_loc34_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!_loc34_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!(_loc34_ && this))
                                                         {
                                                            addr187:
                                                            _loc3_ = §§pop();
                                                            if(!_loc34_)
                                                            {
                                                               addr190:
                                                               continue;
                                                            }
                                                            addr199:
                                                            _loc11_ = this.§7D§[this.§>!e§ - 1];
                                                            if(_loc35_)
                                                            {
                                                               this.§7D§[this.§>!e§ - 1] = _loc4_;
                                                               if(_loc35_)
                                                               {
                                                                  this.§7D§[_loc3_] = _loc11_;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr192:
                                                            if(§§pop() != this.§>!e§ - 1)
                                                            {
                                                               if(_loc34_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                         }
                                                         var _loc32_:*;
                                                         §§push((_loc32_ = this).§>!e§);
                                                         if(_loc35_ || param1)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc33_:* = §§pop();
                                                         if(_loc35_ || param1)
                                                         {
                                                            _loc32_.§>!e§ = _loc33_;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr190);
                                             }
                                             else
                                             {
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr190);
                                       }
                                    }
                                    §§goto(addr327);
                                 }
                                 break;
                              }
                              var _loc5_:* = §§pop();
                              §§push(this.§5@§.width);
                              if(_loc35_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.§5@§.height);
                              if(!_loc34_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              if(_loc35_)
                              {
                                 this.§9!`§ = 0;
                              }
                              var _loc10_:Vector3D = new Vector3D();
                              if(!_loc34_)
                              {
                                 if(param1)
                                 {
                                    if(_loc35_ || this)
                                    {
                                       addr605:
                                       this.§&!,§(param1);
                                       if(_loc34_)
                                       {
                                       }
                                       §§goto(addr2411);
                                    }
                                    §§push(0);
                                    if(!(_loc34_ && this))
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc34_)
                                       {
                                          _loc14_ = §§pop();
                                          if(!_loc34_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc14_);
                                             }
                                             addr2407:
                                          }
                                          §§goto(addr2411);
                                       }
                                    }
                                    while(§§pop() < this.§>!e§)
                                    {
                                       _loc4_ = this.§7D§[_loc14_];
                                       if(!(_loc34_ && _loc2_))
                                       {
                                          §§push(_loc4_.x);
                                          if(!(_loc34_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             loop5:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc4_.y);
                                                   if(!_loc34_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  if(!_loc34_)
                                                                  {
                                                                     _loc10_.x = _loc6_;
                                                                     if(!_loc34_)
                                                                     {
                                                                        _loc10_.y = _loc7_;
                                                                        if(_loc35_)
                                                                        {
                                                                           §§push(Number(this.§`i§[_loc14_ * 3]));
                                                                           if(!(_loc34_ && _loc2_))
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(this.§`i§[_loc14_ * 3 + 1]));
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    if(_loc35_ || param1)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(_loc35_ || this)
                                                                                       {
                                                                                          §§push(_loc4_.scaleX);
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc35_ || _loc2_)
                                                                                             {
                                                                                                §§push(2);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   continue loop5;
                                                                                                   addr1130:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      if(_loc34_ && _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      continue loop7;
                                                                                                      addr650:
                                                                                                      if(!(_loc35_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc21_);
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         §§push(§§pop() > §§pop());
                                                                                                         if(!(_loc34_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     addr675:
                                                                                                                     if(_loc35_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr682:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc35_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(false);
                                                                                                                              if(!_loc34_)
                                                                                                                              {
                                                                                                                                 if(!_loc34_)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(_loc35_ || param1)
                                                                                                                                    {
                                                                                                                                       addr704:
                                                                                                                                       if(!_loc34_)
                                                                                                                                       {
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             loop28:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc35_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc34_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(1.1);
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                         loop30:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               loop31:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(Starling.§!!F§));
                                                                                                                                                                        addr982:
                                                                                                                                                                        while(!(_loc34_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                                                                 loop34:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc34_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc20_ = §§pop();
                                                                                                                                                                                       if(_loc35_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          if(_loc35_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Starling.§!!F§.§#8§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                if(_loc35_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   if(!(_loc34_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(1.1);
                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr2141:
                                                                                                                                                                                                         addr2141:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         loop106:
                                                                                                                                                                                                         for(; _loc35_ || _loc2_; if(_loc34_ && param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         },§§goto(addr2009))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc29_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1999:
                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop106;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop111:
                                                                                                                                                                                                                        for(; !_loc34_; if(_loc34_ && _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        },§§push(_loc19_),if(!_loc34_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1931);
                                                                                                                                                                                                                        },§§goto(addr1935))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc30_ = §§pop();
                                                                                                                                                                                                                              addr2089:
                                                                                                                                                                                                                              loop113:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1884:
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop111;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1889:
                                                                                                                                                                                                                                             if(_loc35_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                if(!(_loc34_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1904:
                                                                                                                                                                                                                                                   if(_loc35_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop111;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1962:
                                                                                                                                                                                                                                                         loop185:
                                                                                                                                                                                                                                                         while(_loc35_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            while(!(_loc34_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc31_ = §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§;H§);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc26_);
                                                                                                                                                                                                                                                                              if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1868:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc27_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop().§<a§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                       while(_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§;H§);
                                                                                                                                                                                                                                                                                          loop125:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             addr1843:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                                                                addr1844:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   addr1845:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                      addr1846:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc24_);
                                                                                                                                                                                                                                                                                                         addr1847:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            addr1848:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                               addr1849:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                  addr1850:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     addr1851:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().§<a§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                        addr1853:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§;H§);
                                                                                                                                                                                                                                                                                                                           continue loop125;
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
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop34;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2277);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1985:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop28;
                                                                                                                                                                                                                                                                  while(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1371);
                                                                                                                                                                                                                                                                        addr1805:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2406);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop108:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc35_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr2046:
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr2063:
                                                                                                                                                                                                                                                                                          if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc34_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2080:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr2084:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            break loop113;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2268);
                                                                                                                                                                                                                                                                                                      §§goto(addr1904);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      addr2309:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         addr2310:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                            §§goto(addr2311);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr2308:
                                                                                                                                                                                                                                                                                                   addr2080:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2295);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             addr2181:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2188:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr2303:
                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr2208);
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                  addr2304:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     break loop106;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr2303:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2267);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2219);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2310);
                                                                                                                                                                                                                                                                                                   addr2189:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2367);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2063);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr2180:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr2116:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                break loop108;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2233);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2269);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr2308);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr2307:
                                                                                                                                                                                                                                                                                    addr2061:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr2307);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr2306:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2234);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2080);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2220);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2155);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr2139:
                                                                                                                                                                                                                                                               while(!_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr2141);
                                                                                                                                                                                                                                                                  continue loop108;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2282);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1970:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     break loop185;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2181);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2221);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr2139);
                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                            §§goto(addr1962);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1962:
                                                                                                                                                                                                                                                         §§goto(addr2272);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr2155);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr2154:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2080);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1931:
                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1935:
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc35_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1942);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr2180);
                                                                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2270);
                                                                                                                                                                                                                                                         §§goto(addr1935);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2304);
                                                                                                                                                                                                                                                      addr2170:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2061);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr2154);
                                                                                                                                                                                                                                                §§goto(addr1889);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr2153:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2189);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2319);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2309);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1962);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop111;
                                                                                                                                                                                                                              if(!(_loc35_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1394);
                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(_loc35_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr2102:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              while(!_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc34_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr2116);
                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop29;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2131);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2239);
                                                                                                                                                                                                                              addr2103:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2131);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2238);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2235);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2103);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2088);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc35_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2265);
                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2299);
                                                                                                                                                                                                               addr2009:
                                                                                                                                                                                                               if(_loc34_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2025);
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2080);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr2306);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2311);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2105);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2170);
                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                             addr947:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2219);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                    addr918:
                                                                                                                                                                                    if(_loc35_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc21_ = §§pop();
                                                                                                                                                                                       if(_loc35_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr847:
                                                                                                                                                                                                         if(_loc34_ && param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc34_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr918);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1999);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               §§goto(addr847);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2291);
                                                                                                                                                                                                            addr902:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                         continue loop30;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2367);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr947);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1931);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-1.1);
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      loop17:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         addr1105:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            addr1106:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc34_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        addr1070:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1.1);
                                                                                                                                                                                                                           if(!(_loc35_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr716:
                                                                                                                                                                                                                        §§goto(addr2367);
                                                                                                                                                                                                                        if(_loc35_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1297:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push((_loc32_ = this).§9!`§);
                                                                                                                                                                                                                           if(_loc35_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + 1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc33_ = §§pop();
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc32_.§9!`§ = _loc33_;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr2394);
                                                                                                                                                                                                                              §§push(this.§;H§);
                                                                                                                                                                                                                              addr1322:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2396);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1706);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1324);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1088:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        addr1089:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           addr1090:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                       if(!(_loc34_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(-1.1);
                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2337);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2270);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1928);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1805);
                                                                                                                                                                                                                                 addr1091:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1048:
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    addr1051:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1050:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr675);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1087:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1928);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1297);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2268);
                                                                                                                                                                                             addr1097:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2299);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2153);
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1322);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2394);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1294:
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1297);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2369);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop10;
                                                                                                                                                                     }
                                                                                                                                                                     addr978:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1294);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1297);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr2297);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr2303);
                                                                                                                                             }
                                                                                                                                             addr2320:
                                                                                                                                          }
                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                          if(_loc35_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr716);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1554);
                                                                                                                                       }
                                                                                                                                       §§goto(addr829);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2352);
                                                                                                                                 }
                                                                                                                                 §§goto(addr855);
                                                                                                                              }
                                                                                                                              §§goto(addr1297);
                                                                                                                           }
                                                                                                                           §§goto(addr1853);
                                                                                                                        }
                                                                                                                        §§goto(addr1294);
                                                                                                                     }
                                                                                                                     §§goto(addr1088);
                                                                                                                  }
                                                                                                                  §§goto(addr863);
                                                                                                               }
                                                                                                               §§goto(addr751);
                                                                                                            }
                                                                                                            §§goto(addr704);
                                                                                                         }
                                                                                                         §§goto(addr2390);
                                                                                                      }
                                                                                                      §§goto(addr2102);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr2361);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr2290);
                                                                                       }
                                                                                       §§goto(addr2246);
                                                                                    }
                                                                                    §§goto(addr2320);
                                                                                 }
                                                                                 §§goto(addr2105);
                                                                              }
                                                                           }
                                                                           §§goto(addr2319);
                                                                        }
                                                                        §§goto(addr1985);
                                                                     }
                                                                     §§goto(addr2150);
                                                                  }
                                                                  §§goto(addr2089);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr2046);
                                                }
                                             }
                                          }
                                          §§goto(addr2361);
                                       }
                                       §§goto(addr2355);
                                       §§goto(addr2407);
                                    }
                                 }
                                 addr2411:
                                 return;
                              }
                              §§goto(addr605);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr113);
                     }
                     addr108:
                     return;
                  }
               }
            }
            §§goto(addr105);
         }
         §§goto(addr91);
      }
      
      private function §&!,§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0!W§ = null;
         §§push(0);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§>!e§)
         {
            _loc3_ = this.§7D§[_loc2_];
            if(!_loc5_)
            {
               this.§-B§[_loc2_ * 3] = _loc3_.x;
            }
            loop1:
            while(true)
            {
               addr68:
               while(true)
               {
                  this.§-B§[_loc2_ * 3 + 1] = _loc3_.y;
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(_loc4_)
         {
            param1.transformVectors(this.§-B§,this.§`i§);
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§3!B§(param1.§>!C§);
         }
         loop0:
         while(true)
         {
            loop1:
            while(this.§9!`§ != 0)
            {
               while(true)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() * this.alpha);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
                  if(!(_loc7_ && param1))
                  {
                     if(_loc7_)
                     {
                        break loop1;
                     }
                     if(false)
                     {
                        continue loop1;
                     }
                     §§push(QuadBatch);
                     §§push(param2 == 1);
                     if(!(_loc7_ && this))
                     {
                        §§push(!§§pop());
                     }
                     §§push(§§pop().§&!%§(§§pop(),this.§5@§.mipMapping,false,this.§ !3§,true));
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                  }
                  continue loop0;
                  var _loc3_:* = §§pop();
                  var _loc4_:Context3D = param1.§#F§;
                  if(!(_loc7_ && _loc3_))
                  {
                     if(_loc4_ == null)
                     {
                        if(!(_loc7_ && this))
                        {
                           §§goto(addr107);
                        }
                     }
                     var _loc5_:Vector.<Number> = !!this.§1y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                     if(_loc6_)
                     {
                        if(param1.§^!6§ != this.§7J§)
                        {
                           while(true)
                           {
                              this.§[s§(0);
                              addr457:
                              while(true)
                              {
                                 this.§7J§ = param1.§^!6§;
                                 addr447:
                                 while(true)
                                 {
                                 }
                              }
                              addr265:
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                              _loc4_.setVertexBufferAt(0,null);
                              loop19:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       _loc4_.setVertexBufferAt(1,null);
                                       loop20:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop19;
                                          }
                                          addr209:
                                          if(!_loc7_)
                                          {
                                             addr221:
                                             if(!(_loc6_ || this))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§>!C§,true);
                                             loop16:
                                             while(true)
                                             {
                                                _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                loop17:
                                                for(; _loc6_ || _loc3_; if(_loc7_ && this)
                                                {
                                                   continue;
                                                },if(_loc6_)
                                                {
                                                   return;
                                                },addr429:,while(true)
                                                {
                                                   this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,this.§9!`§ * 4);
                                                   break loop17;
                                                })
                                                {
                                                   _loc4_.drawTriangles(this.§%!Z§,0,this.§9!`§ * 2);
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      if(_loc7_ && this)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr265);
                                                      addr184:
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         continue loop17;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            _loc4_.setVertexBufferAt(0,this.§8!F§,VertexData.§=!c§,Context3DVertexBufferFormat.FLOAT_3);
                                                            while(_loc6_)
                                                            {
                                                               _loc4_.setVertexBufferAt(1,this.§"-§,VertexData.§ N§,Context3DVertexBufferFormat.FLOAT_2);
                                                               while(_loc6_)
                                                               {
                                                                  _loc4_.setVertexBufferAt(2,this.§-!^§,VertexData.§0J§,Context3DVertexBufferFormat.FLOAT_4);
                                                                  continue loop15;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               addr383:
                                                               while(true)
                                                               {
                                                                  _loc4_.setBlendFactors(this.§?`§,this.§@f§);
                                                                  break loop20;
                                                               }
                                                            }
                                                            addr405:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr457);
                                                         }
                                                      }
                                                      break;
                                                      §§goto(addr258);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc4_.setTextureAt(0,this.§5@§.getBase(_loc4_));
                                                      §§goto(addr358);
                                                   }
                                                   addr358:
                                                }
                                                while(true)
                                                {
                                                   this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,this.§9!`§ * 4);
                                                   §§goto(addr405);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc4_.setProgram(Starling.§!!F§.§9!J§(_loc3_));
                                          §§goto(addr382);
                                          §§goto(addr221);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr447);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§<!R§(_loc4_));
                           if(_loc6_ || param1)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§goto(addr429);
                           }
                           §§goto(addr383);
                           §§goto(addr447);
                        }
                     }
                     §§goto(addr447);
                  }
                  addr107:
                  return;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function get §6!5§() : Boolean
      {
         return false;
      }
      
      public function get §6!-§() : int
      {
         return this.§;H§.§>!B§ / 4;
      }
      
      public function get §>!+§() : int
      {
         return this.§>!e§;
      }
      
      public function get §%!0§() : Number
      {
         return this.§63§;
      }
      
      public function set §%!0§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§63§ = param1;
         }
      }
      
      public function get §8t§() : Number
      {
         return this.§]W§;
      }
      
      public function set §8t§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]W§ = param1;
         }
      }
      
      public function get §'c§() : Number
      {
         return this.§+!6§;
      }
      
      public function set §'c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+!6§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§5@§;
      }
   }
}
