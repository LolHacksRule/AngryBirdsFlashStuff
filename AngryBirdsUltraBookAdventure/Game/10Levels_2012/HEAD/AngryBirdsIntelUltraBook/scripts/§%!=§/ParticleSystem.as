package §%!=§
{
   import §"$§.QuadBatch;
   import §"$§.RenderSupport;
   import §"$§.Starling;
   import §'_§.Texture;
   import §1!&§.DisplayObject;
   import §;v§.§!!8§;
   import §@%§.§-a§;
   import §@2§.VertexData;
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
   
   public class ParticleSystem extends DisplayObject implements §!!8§
   {
       
      
      private var §!!!§:Texture;
      
      private var §]!N§:Vector.<§ W§>;
      
      private var §4!#§:Number;
      
      private var §@!2§:Vector.<Number>;
      
      private var §"!D§:Vector.<Number>;
      
      private var §%?§:VertexData;
      
      private var §6!2§:VertexBuffer3D;
      
      private var §4!i§:VertexBuffer3D;
      
      private var §74§:VertexBuffer3D;
      
      private var §6!I§:Vector.<uint>;
      
      private var §`!K§:IndexBuffer3D;
      
      private var §='§:int;
      
      private var § b§:int;
      
      private var §=!3§:Number;
      
      protected var §>c§:Number;
      
      private var §^A§:Number = 0.0;
      
      private var §&!O§:Number;
      
      protected var §#J§:Number;
      
      protected var §>^§:Number;
      
      protected var §1J§:Boolean;
      
      protected var §44§:String;
      
      protected var §2!9§:String;
      
      protected var §9!Z§:String;
      
      private var §4!D§:int = -1;
      
      private var §<+§:Boolean = false;
      
      private var §<!$§:Number = 0.0;
      
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
                              §§pop().§2!9§ = §§pop();
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
                                                   if(this.§1J§)
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
                                          §§pop().§44§ = §§pop();
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
                                                   this.§5!P§(param3);
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
                     this.§!!!§ = param1;
                     if(_loc7_ && param1)
                     {
                        break;
                     }
                     this.§1J§ = param1.premultipliedAlpha;
                     loop2:
                     for(; _loc8_; while(true)
                     {
                        if(!(_loc7_ && param3))
                        {
                           this.§6!I§ = new Vector.<uint>(0);
                           if(!_loc8_)
                           {
                              break;
                           }
                           this.§=!3§ = param2;
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                           continue;
                        }
                        continue loop2;
                     },§§goto(addr307))
                     {
                        this.§]!N§ = new Vector.<§ W§>(0,false);
                        while(true)
                        {
                           this.§@!2§ = new Vector.<Number>();
                           if(!_loc8_)
                           {
                              break;
                           }
                           this.§"!D§ = new Vector.<Number>();
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                           if(!_loc7_)
                           {
                              this.§%?§ = new VertexData(0,this.§1J§);
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
            §§push(Boolean(this.§6!2§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§6!2§.dispose();
                     addr163:
                     while(true)
                     {
                     }
                  }
                  addr159:
               }
               while(true)
               {
                  §§push(Boolean(this.§4!i§));
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§4!i§.dispose();
                           addr154:
                           while(true)
                           {
                           }
                        }
                        addr150:
                     }
                     while(true)
                     {
                        §§push(Boolean(this.§74§));
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
                                    this.§74§.dispose();
                                    loop10:
                                    while(true)
                                    {
                                       continue loop8;
                                       addr68:
                                       if(_loc1_ && this)
                                       {
                                          continue;
                                       }
                                       this.§"!D§ = null;
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
                                                   this.§`!K§.dispose();
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§@!2§ = null;
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
      
      protected function createParticle() : § W§
      {
         return new § W§();
      }
      
      protected function initParticle(param1:§ W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.x = this.§#J§;
            loop0:
            while(true)
            {
               param1.y = this.§>^§;
               loop1:
               while(true)
               {
                  param1.§#!@§ = 0;
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
                                    param1.§2L§ = 1;
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
      
      protected function advanceParticle(param1:§ W§, param2:Number) : void
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
               §§push(param1.§#!@§);
               if(!(_loc3_ && param2))
               {
                  §§push(§§pop() / param1.§2L§);
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
                        §§push(param1.§#!@§);
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop() + param2);
                        }
                        §§pop().§#!@§ = §§pop();
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
      
      private function §5!P§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§=`§);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§=`§);
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
                        this.§!!!§.adjustVertexData(_loc4_,0,4);
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
                     this.§6!I§.fixed = false;
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 this.§]!N§.fixed = false;
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
                                                   this.§]!N§.fixed = true;
                                                   loop9:
                                                   while(!(_loc8_ && this))
                                                   {
                                                      this.§6!I§.fixed = true;
                                                      loop10:
                                                      for(; _loc9_ || _loc3_; this.§<+§ = true,if(!(_loc9_ || _loc3_))
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
                                                            this.§%?§.append(_loc4_);
                                                            addr290:
                                                            while(true)
                                                            {
                                                               this.§6!I§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
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
                                                                                                      this.§@!2§.push(0);
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
                                                                                                this.§"!D§.push(0);
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
                                                                                                            this.§]!N§.push(this.createParticle());
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
      
      private function §=![§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§<+§);
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
                     §§push(this.§%?§.§]!;§);
                     if(_loc4_)
                     {
                        §§push(int(§§pop() / 4));
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc3_)
                     {
                        §§push(Boolean(this.§6!2§));
                        loop0:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§6!2§.dispose();
                                 addr286:
                                 while(true)
                                 {
                                 }
                              }
                              addr282:
                           }
                           while(true)
                           {
                              §§push(Boolean(this.§4!i§));
                              while(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§4!i§.dispose();
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
         throw new §-a§();
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§=!3§ != 0)
            {
               if(_loc3_)
               {
                  addr30:
                  this.§&!O§ = param1;
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
            this.§&!O§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §&!R§(param1);
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
      
      public function §%1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
            do
            {
               this.§ !<§(null);
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
            this.§<!$§ = param1;
         }
      }
      
      private function § !<§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc4_:§ W§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§ W§ = null;
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
            §§push(Boolean(isNaN(this.§<!$§)));
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
                        §§push(this.§<!$§);
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
                              §§push(this.§<!$§);
                              if(_loc35_)
                              {
                                 addr113:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              if(_loc35_ || _loc2_)
                              {
                                 this.§<!$§ = 0;
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
                                    §§push(this.§='§);
                                    if(_loc35_ || this)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc34_ && _loc2_))
                                          {
                                             §§push(this.§&!O§);
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
                                                            §§push(§§pop() / this.§=!3§);
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
                                                                     §§push(this.§4!#§);
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(§§pop() + _loc2_);
                                                                     }
                                                                     §§pop().§4!#§ = §§pop();
                                                                     if(!(_loc34_ && _loc3_))
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§4!#§);
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
                                                                                    §§push(this.§='§);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§=`§);
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!_loc34_)
                                                                                                {
                                                                                                   this.§5!P§(this.§=`§);
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = this.§]!N§[this.§='§++] as § W§;
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         this.initParticle(_loc4_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.advanceParticle(_loc4_,this.§4!#§);
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
                                                                                                                        if(!isNaN(this.§>c§))
                                                                                                                        {
                                                                                                                           loop207:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(!(_loc34_ && this))
                                                                                                                              {
                                                                                                                                 §§push(1 - this.§>c§);
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    §§push(Math.random() * this.§>c§);
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
                                                                                                                                             §§push(this.§^A§);
                                                                                                                                             if(_loc35_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(_loc35_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc13_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().§^A§ = §§pop();
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
                                                                                       §§push(this.§&!O§);
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
                                                                              this.§&!O§ = Math.max(0,this.§&!O§ - _loc2_);
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
                                          _loc4_ = this.§]!N§[_loc3_];
                                          if(_loc35_ || param1)
                                          {
                                             if(_loc4_.§#!@§ < _loc4_.§2L§)
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
                                                            _loc11_ = this.§]!N§[this.§='§ - 1];
                                                            if(_loc35_)
                                                            {
                                                               this.§]!N§[this.§='§ - 1] = _loc4_;
                                                               if(_loc35_)
                                                               {
                                                                  this.§]!N§[_loc3_] = _loc11_;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr192:
                                                            if(§§pop() != this.§='§ - 1)
                                                            {
                                                               if(_loc34_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                         }
                                                         var _loc32_:*;
                                                         §§push((_loc32_ = this).§='§);
                                                         if(_loc35_ || param1)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc33_:* = §§pop();
                                                         if(_loc35_ || param1)
                                                         {
                                                            _loc32_.§='§ = _loc33_;
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
                              §§push(this.§!!!§.width);
                              if(_loc35_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.§!!!§.height);
                              if(!_loc34_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              if(_loc35_)
                              {
                                 this.§ b§ = 0;
                              }
                              var _loc10_:Vector3D = new Vector3D();
                              if(!_loc34_)
                              {
                                 if(param1)
                                 {
                                    if(_loc35_ || this)
                                    {
                                       addr605:
                                       this.§!^§(param1);
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
                                    while(§§pop() < this.§='§)
                                    {
                                       _loc4_ = this.§]!N§[_loc14_];
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
                                                                           §§push(Number(this.§"!D§[_loc14_ * 3]));
                                                                           if(!(_loc34_ && _loc2_))
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(this.§"!D§[_loc14_ * 3 + 1]));
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
                                                                                                                                                                        §§push(Boolean(Starling.§'!A§));
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
                                                                                                                                                                                             §§push(Starling.§'!A§.§;l§);
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
                                                                                                                                                                                                                                                                     §§push(this.§%?§);
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
                                                                                                                                                                                                                                                                                       §§pop().§^!L§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                       while(_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§%?§);
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
                                                                                                                                                                                                                                                                                                                        §§pop().§^!L§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                        addr1853:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§%?§);
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
                                                                                                                                                                                                                           §§push((_loc32_ = this).§ b§);
                                                                                                                                                                                                                           if(_loc35_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + 1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc33_ = §§pop();
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc32_.§ b§ = _loc33_;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr2394);
                                                                                                                                                                                                                              §§push(this.§%?§);
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
      
      private function §!^§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ W§ = null;
         §§push(0);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§='§)
         {
            _loc3_ = this.§]!N§[_loc2_];
            if(!_loc5_)
            {
               this.§@!2§[_loc2_ * 3] = _loc3_.x;
            }
            loop1:
            while(true)
            {
               addr68:
               while(true)
               {
                  this.§@!2§[_loc2_ * 3 + 1] = _loc3_.y;
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(_loc4_)
         {
            param1.transformVectors(this.§@!2§,this.§"!D§);
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§ !<§(param1.§+!&§);
         }
         loop0:
         while(true)
         {
            loop1:
            while(this.§ b§ != 0)
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
                     §§push(§§pop().§8<§(§§pop(),this.§!!!§.mipMapping,false,this.§9!Z§,true));
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                  }
                  continue loop0;
                  var _loc3_:* = §§pop();
                  var _loc4_:Context3D = param1.§6!&§;
                  if(!(_loc7_ && _loc3_))
                  {
                     if(_loc4_ == null)
                     {
                        if(!(_loc7_ && this))
                        {
                           §§goto(addr107);
                        }
                     }
                     var _loc5_:Vector.<Number> = !!this.§1J§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                     if(_loc6_)
                     {
                        if(param1.§@0§ != this.§4!D§)
                        {
                           while(true)
                           {
                              this.§5!P§(0);
                              addr457:
                              while(true)
                              {
                                 this.§4!D§ = param1.§@0§;
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
                                             _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§+!&§,true);
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
                                                   this.§4!i§.uploadFromVector(this.§%?§.§&+§,0,this.§ b§ * 4);
                                                   break loop17;
                                                })
                                                {
                                                   _loc4_.drawTriangles(this.§`!K§,0,this.§ b§ * 2);
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
                                                            _loc4_.setVertexBufferAt(0,this.§74§,VertexData.§`[§,Context3DVertexBufferFormat.FLOAT_3);
                                                            while(_loc6_)
                                                            {
                                                               _loc4_.setVertexBufferAt(1,this.§6!2§,VertexData.§[^§,Context3DVertexBufferFormat.FLOAT_2);
                                                               while(_loc6_)
                                                               {
                                                                  _loc4_.setVertexBufferAt(2,this.§4!i§,VertexData.§]!C§,Context3DVertexBufferFormat.FLOAT_4);
                                                                  continue loop15;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               addr383:
                                                               while(true)
                                                               {
                                                                  _loc4_.setBlendFactors(this.§44§,this.§2!9§);
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
                                                      _loc4_.setTextureAt(0,this.§!!!§.getBase(_loc4_));
                                                      §§goto(addr358);
                                                   }
                                                   addr358:
                                                }
                                                while(true)
                                                {
                                                   this.§74§.uploadFromVector(this.§%?§.§7!a§,0,this.§ b§ * 4);
                                                   §§goto(addr405);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc4_.setProgram(Starling.§'!A§.§3t§(_loc3_));
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
                           §§push(this.§=![§(_loc4_));
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
      
      public function get §8&§() : Boolean
      {
         return false;
      }
      
      public function get §=`§() : int
      {
         return this.§%?§.§]!;§ / 4;
      }
      
      public function get §]u§() : int
      {
         return this.§='§;
      }
      
      public function get §>S§() : Number
      {
         return this.§=!3§;
      }
      
      public function set §>S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!3§ = param1;
         }
      }
      
      public function get §!c§() : Number
      {
         return this.§#J§;
      }
      
      public function set §!c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#J§ = param1;
         }
      }
      
      public function get §8!a§() : Number
      {
         return this.§>^§;
      }
      
      public function set §8!a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§>^§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§!!!§;
      }
   }
}
