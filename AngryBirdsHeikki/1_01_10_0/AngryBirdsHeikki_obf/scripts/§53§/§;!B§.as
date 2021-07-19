package §53§
{
   import §"^§.§'X§;
   import §"^§.§+!'§;
   import §"^§.§2v§;
   import §,M§.§6!G§;
   import §2Y§.DisplayObject;
   import §2i§.§"V§;
   import §=9§.§?!2§;
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
   
   public class §;!B§ extends DisplayObject implements §6!G§
   {
       
      
      private var §-y§:Texture;
      
      private var §@!f§:Vector.<§=!b§>;
      
      private var §#s§:Number;
      
      private var §3^§:Vector.<Number>;
      
      private var §[0§:Vector.<Number>;
      
      private var §-!^§:§?!2§;
      
      private var §%3§:VertexBuffer3D;
      
      private var §3§:VertexBuffer3D;
      
      private var §[l§:VertexBuffer3D;
      
      private var §[X§:Vector.<uint>;
      
      private var §8`§:IndexBuffer3D;
      
      private var §-!M§:int;
      
      private var §?!Z§:int;
      
      private var § D§:Number;
      
      protected var §6j§:Number;
      
      private var §9!J§:Number = 0.0;
      
      private var §3H§:Number;
      
      protected var §0!Z§:Number;
      
      protected var §@!<§:Number;
      
      protected var §][§:Boolean;
      
      protected var §-"§:String;
      
      protected var §;!"§:String;
      
      protected var §+!$§:String;
      
      private var §^d§:int = -1;
      
      private var §14§:Boolean = false;
      
      private var §#g§:Number = 0.0;
      
      public function §;!B§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            loop0:
            for(; param1 != null; if(!(_loc7_ || param2))
            {
               continue;
            })
            {
               loop1:
               while(true)
               {
                  this.§-y§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§][§ = param1.premultipliedAlpha;
                     if(_loc7_)
                     {
                        this.§@!f§ = new Vector.<§=!b§>(0,false);
                        if(_loc8_ && param1)
                        {
                           break;
                        }
                        this.§3^§ = new Vector.<Number>();
                        loop3:
                        while(true)
                        {
                           this.§[0§ = new Vector.<Number>();
                           if(_loc8_)
                           {
                              break;
                           }
                           continue loop0;
                           addr40:
                           if(!(_loc8_ && param1))
                           {
                              if(_loc7_ || param1)
                              {
                                 this.§#s§ = 0;
                                 if(_loc7_)
                                 {
                                    addr25:
                                    if(!(_loc8_ && param2))
                                    {
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             this.§3H§ = 0;
                                             if(_loc7_)
                                             {
                                                §§goto(addr40);
                                             }
                                             break loop3;
                                             §§goto(addr25);
                                          }
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                this.§[X§ = new Vector.<uint>(0);
                                                if(_loc7_ || param1)
                                                {
                                                   this.§ D§ = param2;
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(!(_loc7_ || param2))
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr34);
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                             break loop0;
                                             §§goto(addr25);
                                          }
                                          addr34:
                                          addr191:
                                          return;
                                          addr206:
                                          addr99:
                                       }
                                       this.§0!Z§ = this.§@!<§ = 0;
                                       if(!_loc8_)
                                       {
                                          break loop2;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(param3 > 0)
                                          {
                                             addr199:
                                             if(!_loc8_)
                                             {
                                                this.§7!$§(param3);
                                             }
                                             if(_loc7_)
                                             {
                                                §§goto(addr206);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop9;
                                                   §§goto(addr199);
                                                }
                                                addr252:
                                             }
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    §§goto(addr99);
                                 }
                                 break loop2;
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           §§push(this);
                           if(_loc7_)
                           {
                              §§push(param4);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          §§pop();
                                          if(!_loc8_)
                                          {
                                             addr239:
                                             if(!this.§][§)
                                             {
                                                addr251:
                                                §§pop().§-"§ = Context3DBlendFactor.SOURCE_ALPHA;
                                                §§goto(addr252);
                                             }
                                             §§goto(addr251);
                                          }
                                          §§push(Context3DBlendFactor.ONE);
                                          if(_loc8_)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                              }
                              §§goto(addr251);
                           }
                           §§goto(addr239);
                        }
                     }
                     break;
                  }
                  §§push(this);
                  if(!_loc8_)
                  {
                     §§push(param5);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(_loc7_ || param2)
                        {
                           addr269:
                           if(!§§pop())
                           {
                              if(_loc7_ || param3)
                              {
                                 addr288:
                                 §§pop();
                                 §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                              }
                           }
                           §§pop().§;!"§ = §§pop();
                           §§goto(addr293);
                        }
                        §§goto(addr288);
                     }
                     §§goto(addr269);
                  }
                  §§goto(addr288);
               }
            }
            throw new ArgumentError("texture must not be null");
         }
         while(true)
         {
            this.§-!^§ = new §?!2§(0,this.§][§);
            §§goto(addr191);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§%3§)
            {
               while(true)
               {
                  this.§%3§.dispose();
                  addr132:
                  while(true)
                  {
                  }
               }
               addr129:
            }
            loop2:
            while(true)
            {
               if(this.§3§)
               {
                  loop3:
                  while(true)
                  {
                     this.§3§.dispose();
                     addr125:
                     loop4:
                     while(true)
                     {
                        addr75:
                        if(_loc1_ || this)
                        {
                           this.§[0§ = null;
                           loop12:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr129);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§[l§.dispose();
                                       addr107:
                                       loop7:
                                       while(true)
                                       {
                                          addr83:
                                          while(true)
                                          {
                                             if(!this.§8`§)
                                             {
                                                while(true)
                                                {
                                                   this.§3^§ = null;
                                                   §§goto(addr99);
                                                }
                                                addr87:
                                             }
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   this.§8`§.dispose();
                                                   addr92:
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         break loop12;
                                                      }
                                                      addr99:
                                                   }
                                                }
                                             }
                                             addr40:
                                             continue loop4;
                                             return;
                                             continue loop7;
                                          }
                                       }
                                    }
                                    addr104:
                                 }
                              }
                              while(_loc1_)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr75);
                                 }
                                 else
                                 {
                                    §§goto(addr107);
                                 }
                              }
                              §§goto(addr92);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(this.§[l§)
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr83);
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr89);
      }
      
      protected function createParticle() : §=!b§
      {
         return new §=!b§();
      }
      
      protected function initParticle(param1:§=!b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            param1.x = this.§0!Z§;
            while(true)
            {
               param1.y = this.§@!<§;
               addr120:
               while(true)
               {
                  param1.§7-§ = 0;
                  loop2:
                  while(true)
                  {
                     param1.§2c§ = 1;
                     while(true)
                     {
                        param1.red = Math.random();
                        addr80:
                        while(_loc2_ || this)
                        {
                           continue loop2;
                        }
                     }
                  }
                  addr39:
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr46:
                  }
               }
            }
            addr125:
         }
         while(true)
         {
            param1.green = Math.random();
            loop6:
            while(true)
            {
               if(_loc2_)
               {
                  param1.blue = Math.random();
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop6;
                  }
                  §§goto(addr80);
               }
               else
               {
                  §§goto(addr125);
               }
            }
            §§goto(addr120);
         }
         §§goto(addr46);
      }
      
      protected function advanceParticle(param1:§=!b§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            §§push(param1.y);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param2);
               if(!_loc3_)
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
               §§push(param1.§7-§);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() / param1.§2c§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(true)
               {
                  param1.scaleX = 1 - param1.alpha;
                  continue loop0;
                  addr55:
                  if(_loc4_)
                  {
                     §§push(param1);
                     §§push(param1.§7-§);
                     if(_loc4_ || param2)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§7-§ = §§pop();
                     addr67:
                     if(!_loc3_)
                     {
                        return;
                        addr53:
                     }
                     while(!_loc3_)
                     {
                        §§goto(addr55);
                        §§goto(addr67);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            param1.scaleY = 1 - param1.alpha;
            §§goto(addr53);
         }
      }
      
      private function §7!$§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§3m§);
         if(!(_loc9_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§3m§);
         if(_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§?!2§;
         (_loc4_ = new §?!2§(4)).setTexCoords(0,0,0);
         if(!_loc9_)
         {
            _loc4_.setTexCoords(1,1,0);
         }
         while(true)
         {
            _loc4_.setTexCoords(2,0,1);
            loop1:
            while(true)
            {
               _loc4_.setTexCoords(3,1,1);
               addr104:
               while(true)
               {
                  this.§-y§.adjustVertexData(_loc4_,0,4);
                  continue loop1;
               }
            }
            if(!(_loc8_ || param1))
            {
               continue;
            }
            §§goto(addr70);
         }
      }
      
      private function §0!X§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§14§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr42);
                  }
               }
               if(param1 == null)
               {
                  if(_loc4_ || _loc3_)
                  {
                     throw new §"V§();
                  }
               }
               §§push(this.§-!^§.§<!§);
               if(_loc4_ || _loc2_)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || param1)
               {
                  if(this.§%3§)
                  {
                     while(true)
                     {
                        this.§%3§.dispose();
                        addr280:
                        addr206:
                        while(true)
                        {
                        }
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        this.§3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§1!R§);
                        while(true)
                        {
                           this.§3§.uploadFromVector(this.§-!^§.§!$§,0,_loc2_ * 4);
                           loop13:
                           while(_loc4_)
                           {
                              this.§[l§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§#!Q§);
                              loop14:
                              while(_loc4_)
                              {
                                 this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,_loc2_ * 4);
                                 loop15:
                                 while(true)
                                 {
                                    this.§8`§ = param1.createIndexBuffer(_loc2_ * 6);
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop15;
                                    }
                                    continue loop13;
                                 }
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       return true;
                                    }
                                    loop6:
                                    while(_loc4_ || _loc2_)
                                    {
                                       this.§[l§.dispose();
                                       loop7:
                                       while(_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(this.§8`§)
                                             {
                                                addr231:
                                                while(true)
                                                {
                                                   this.§8`§.dispose();
                                                   addr234:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§3§.dispose();
                                                            break loop6;
                                                         }
                                                         addr260:
                                                      }
                                                      else
                                                      {
                                                         addr238:
                                                      }
                                                   }
                                                }
                                                addr231:
                                             }
                                             while(true)
                                             {
                                                this.§%3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§6?§);
                                                addr224:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§%3§.uploadFromByteArray(this.§-!^§.§8Y§,0,0,_loc2_ * 4);
                                                      break loop14;
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr234);
                                                §§goto(addr238);
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       addr239:
                                       while(true)
                                       {
                                          if(this.§[l§)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr227);
                                          continue loop4;
                                       }
                                    }
                                    addr243:
                                 }
                                 §§goto(addr234);
                              }
                              while(!(_loc3_ && this))
                              {
                                 §§goto(addr206);
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.§3§)
                     {
                        §§goto(addr260);
                     }
                     §§goto(addr239);
                     §§goto(addr280);
                  }
               }
               §§goto(addr231);
            }
            §§goto(addr42);
         }
         addr42:
         return false;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§ D§ != 0)
            {
               if(!_loc2_)
               {
                  this.§3H§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3H§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §6!5§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc5_)
         {
            if(param2 != null)
            {
               while(true)
               {
                  param2.x = _loc4_.x;
                  while(_loc5_)
                  {
                     param2.y = _loc4_.y;
                     while(_loc5_)
                     {
                        param2.width = 0;
                        loop3:
                        while(!(_loc6_ && _loc3_))
                        {
                           if(_loc6_ && this)
                           {
                              return new Rectangle(_loc4_.x,_loc4_.y);
                           }
                           addr102:
                           while(true)
                           {
                              param2.height = 0;
                              if(!_loc6_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return param2;
                        }
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         §§goto(addr72);
      }
      
      public function §!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.advanceTime(param1);
            do
            {
               this.§4!A§(null);
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#g§ = param1;
         }
      }
      
      private function §4!A§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §<F§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=!b§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§-!M§)
         {
            _loc3_ = this.§@!f§[_loc2_];
            if(!_loc5_)
            {
               this.§3^§[_loc2_ * 3] = _loc3_.x;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§3^§[_loc2_ * 3 + 1] = _loc3_.y;
                     do
                     {
                        _loc2_++;
                     }
                     while(!(_loc4_ || param1));
                     
                     if(!(_loc4_ || this))
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
         if(!(_loc5_ && _loc2_))
         {
            param1.transformVectors(this.§3^§,this.§[0§);
         }
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§4!A§(param1.§0K§);
            while(true)
            {
               §§goto(addr64);
            }
         }
         while(false)
         {
            addr64:
            while(this.§?!Z§ != 0)
            {
               do
               {
                  §§push(param2);
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop() * this.alpha);
                     if(!(_loc6_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
               }
               while(_loc6_ && this);
               
               if(!(_loc7_ || param2))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§push(§2v§);
         §§push(param2 == 1);
         if(!_loc6_)
         {
            §§push(!§§pop());
         }
         §§push(§§pop().§^W§(§§pop(),this.§-y§.mipMapping,false,this.§+!$§,true));
         if(!(_loc6_ && param2))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:Context3D;
         if((_loc4_ = param1.§&!8§) == null)
         {
            if(_loc7_)
            {
               return;
            }
         }
         else
         {
            var _loc5_:Vector.<Number> = !!this.§][§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
            if(_loc7_)
            {
               if(param1.§^!G§ != this.§^d§)
               {
                  while(true)
                  {
                     this.§7!$§(0);
                     addr415:
                     addr308:
                     while(true)
                     {
                        this.§^d§ = param1.§^!G§;
                        addr396:
                        while(true)
                        {
                        }
                     }
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     _loc4_.setVertexBufferAt(2,this.§3§,§?!2§.§'"§,Context3DVertexBufferFormat.FLOAT_4);
                     loop17:
                     while(_loc7_)
                     {
                        _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§0K§,true);
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_)
                              {
                                 _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                 loop19:
                                 while(true)
                                 {
                                    _loc4_.drawTriangles(this.§8`§,0,this.§?!Z§ * 2);
                                    addr259:
                                    while(true)
                                    {
                                       _loc4_.setVertexBufferAt(0,null);
                                       continue loop19;
                                    }
                                 }
                              }
                              break;
                           }
                           continue loop17;
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr207);
                        }
                        while(true)
                        {
                           _loc4_.setVertexBufferAt(0,this.§[l§,§?!2§.§3A§,Context3DVertexBufferFormat.FLOAT_3);
                           §§goto(addr326);
                        }
                     }
                     while(!_loc6_)
                     {
                        this.§3§.uploadFromVector(this.§-!^§.§!$§,0,this.§?!Z§ * 4);
                        §§goto(addr390);
                     }
                     §§goto(addr396);
                     addr377:
                  }
               }
               while(true)
               {
                  if(!this.§0!X§(_loc4_))
                  {
                     §§goto(addr377);
                  }
                  §§goto(addr344);
                  §§goto(addr396);
               }
            }
            §§goto(addr351);
         }
         §§goto(addr120);
      }
      
      public function get §5@§() : Boolean
      {
         return false;
      }
      
      public function get §3m§() : int
      {
         return this.§-!^§.§<!§ / 4;
      }
      
      public function get §,7§() : int
      {
         return this.§-!M§;
      }
      
      public function get §+3§() : Number
      {
         return this.§ D§;
      }
      
      public function set §+3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ D§ = param1;
         }
      }
      
      public function get § !Y§() : Number
      {
         return this.§0!Z§;
      }
      
      public function set § !Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0!Z§ = param1;
         }
      }
      
      public function get §+$§() : Number
      {
         return this.§@!<§;
      }
      
      public function set §+$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!<§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§-y§;
      }
   }
}
