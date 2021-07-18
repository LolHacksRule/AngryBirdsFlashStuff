package §9x§
{
   import §+!Y§.§7!@§;
   import §2!F§.§0M§;
   import §3W§.§>!-§;
   import §6p§.§5!W§;
   import §6p§.§50§;
   import §6p§.§?%§;
   import §7R§.Texture;
   import §default§.DisplayObject;
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
   
   public class §+!g§ extends DisplayObject implements §7!@§
   {
       
      
      private var §+!m§:Texture;
      
      private var §^!r§:Vector.<§>>§>;
      
      private var §&"<§:Number;
      
      private var §8!U§:Vector.<Number>;
      
      private var §%`§:Vector.<Number>;
      
      private var §8!m§:§>!-§;
      
      private var §="<§:VertexBuffer3D;
      
      private var §[!n§:VertexBuffer3D;
      
      private var §^">§:VertexBuffer3D;
      
      private var §,!T§:Vector.<uint>;
      
      private var §?!U§:IndexBuffer3D;
      
      private var §^R§:int;
      
      private var §]2§:int;
      
      private var §2C§:Number;
      
      protected var §5!#§:Number;
      
      private var §%v§:Number = 0.0;
      
      private var §7'§:Number;
      
      protected var § "7§:Number;
      
      protected var §2D§:Number;
      
      protected var §,";§:Boolean;
      
      protected var §'!o§:String;
      
      protected var §%[§:String;
      
      protected var §,!#§:String;
      
      private var §^!!§:int = -1;
      
      private var §?O§:Boolean = false;
      
      private var §^=§:Number = 0.0;
      
      public function §+!g§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super();
            loop0:
            while(param1 != null)
            {
               while(true)
               {
                  this.§+!m§ = param1;
                  while(true)
                  {
                     this.§,";§ = param1.premultipliedAlpha;
                     loop3:
                     for(; _loc8_ || param3; if(_loc8_ || param3)
                     {
                        if(!_loc7_)
                        {
                           if(false)
                           {
                              §§goto(addr46);
                           }
                           this.§ "7§ = this.§2D§ = 0;
                           if(!(_loc7_ && this))
                           {
                              §§push(this);
                              if(_loc8_ || param3)
                              {
                                 §§push(param5);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       addr300:
                                       if(!§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             addr314:
                                             §§pop();
                                             §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                          }
                                       }
                                       §§pop().§%[§ = §§pop();
                                       §§goto(addr319);
                                    }
                                    §§goto(addr314);
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr319);
                        }
                        break loop0;
                     })
                     {
                        this.§^!r§ = new Vector.<§>>§>(0,false);
                        loop4:
                        while(true)
                        {
                           this.§8!U§ = new Vector.<Number>();
                           if(!_loc8_)
                           {
                              break;
                           }
                           this.§%`§ = new Vector.<Number>();
                           loop5:
                           while(true)
                           {
                              this.§8!m§ = new §>!-§(0,this.§,";§);
                              while(true)
                              {
                                 this.§,!T§ = new Vector.<uint>(0);
                                 continue loop4;
                                 addr64:
                                 if(!(_loc8_ || param3))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    addr46:
                                    while(true)
                                    {
                                       this.§7'§ = 0;
                                       if(_loc8_ || param2)
                                       {
                                          this.§&"<§ = 0;
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                          addr57:
                                       }
                                       addr319:
                                       §§push(this);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(param4);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(§§pop());
                                             if(!(_loc7_ && param3))
                                             {
                                                addr255:
                                                if(!§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         addr262:
                                                         if(this.§,";§)
                                                         {
                                                            addr265:
                                                            §§push(Context3DBlendFactor.ONE);
                                                            if(_loc8_)
                                                            {
                                                               addr274:
                                                               §§pop().§'!o§ = §§pop();
                                                               break loop4;
                                                            }
                                                         }
                                                         §§goto(addr274);
                                                         §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                }
                                             }
                                             §§goto(addr274);
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr262);
                                    }
                                 }
                              }
                           }
                        }
                        addr275:
                        if(param3 > 0)
                        {
                           if(!(_loc7_ && param1))
                           {
                              if(_loc8_ || this)
                              {
                                 if(_loc7_ && param3)
                                 {
                                    §§goto(addr319);
                                 }
                                 this.§set §(param3);
                                 addr197:
                                 return;
                                 addr229:
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr197);
                     }
                  }
               }
               if(!(_loc8_ || this))
               {
                  continue;
               }
               this.§2C§ = param2;
               if(!_loc7_)
               {
                  §§goto(addr64);
               }
               §§goto(addr319);
            }
            throw new ArgumentError("texture must not be null");
         }
         §§goto(addr71);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§="<§)
            {
               while(true)
               {
                  this.§="<§.dispose();
                  addr128:
                  while(true)
                  {
                  }
               }
               addr125:
            }
            loop2:
            while(true)
            {
               if(this.§[!n§)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§[!n§.dispose();
                  }
                  while(true)
                  {
                  }
                  addr121:
               }
               loop4:
               while(true)
               {
                  if(this.§^">§)
                  {
                     addr91:
                     while(true)
                     {
                        this.§^">§.dispose();
                        addr94:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr91:
                  }
                  while(true)
                  {
                     if(this.§?!U§)
                     {
                        loop6:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              this.§?!U§.dispose();
                              while(!_loc1_)
                              {
                                 while(_loc2_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       this.§%`§ = null;
                                       while(_loc2_)
                                       {
                                          super.dispose();
                                          if(_loc2_ || this)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(!(_loc1_ && this))
                                                {
                                                   return;
                                                }
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr125);
                                 }
                              }
                              continue loop2;
                           }
                           §§goto(addr91);
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§8!U§ = null;
                        §§goto(addr65);
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function createParticle() : §>>§
      {
         return new §>>§();
      }
      
      protected function initParticle(param1:§>>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            param1.x = this.§ "7§;
            loop0:
            while(true)
            {
               param1.y = this.§2D§;
               addr116:
               while(true)
               {
                  param1.§@!=§ = 0;
                  continue loop0;
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function advanceParticle(param1:§>>§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc3_ || param1)
            {
               §§push(param2);
               if(_loc3_ || param1)
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
               §§push(param1.§@!=§);
               if(!_loc4_)
               {
                  §§push(§§pop() / param1.§!P§);
               }
               §§pop().alpha = §§pop() - §§pop();
               addr87:
               while(_loc3_)
               {
                  param1.scaleX = 1 - param1.alpha;
               }
            }
         }
         while(true)
         {
            param1.scaleY = 1 - param1.alpha;
            for(; !_loc4_; §§push(param1),§§push(param1.§@!=§),if(!(_loc4_ && this))
            {
               §§push(§§pop() + param2);
            },§§pop().§@!=§ = §§pop(),if(!_loc4_)
            {
               return;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr87);
            }
         }
      }
      
      private function §set §(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§<!G§);
         if(_loc9_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§<!G§);
         if(_loc9_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§>!-§;
         (_loc4_ = new §>!-§(4)).setTexCoords(0,0,0);
         if(_loc9_ || param1)
         {
            _loc4_.setTexCoords(1,1,0);
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
               while(_loc9_)
               {
                  _loc4_.setTexCoords(3,1,1);
                  addr84:
                  if(_loc8_ && this)
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§^!r§.fixed = false;
                     do
                     {
                        this.§,!T§.fixed = false;
                     }
                     while(_loc8_);
                     
                     if(_loc8_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     if(_loc9_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc9_ || _loc2_)
                        {
                           §§push(_loc3_);
                           if(!_loc8_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§^!r§.fixed = true;
                                    loop8:
                                    while(true)
                                    {
                                       this.§,!T§.fixed = true;
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(_loc9_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      this.§^!r§.push(this.createParticle());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         loop14:
                                                         while(!(_loc8_ && this))
                                                         {
                                                            _loc7_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               addr221:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(3);
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              addr234:
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§8!U§.push(0);
                                                                              this.§%`§.push(0);
                                                                              addr264:
                                                                           }
                                                                           _loc7_++;
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     this.§8!m§.append(_loc4_);
                                                                     while(true)
                                                                     {
                                                                        this.§,!T§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                                        addr216:
                                                                        while(!_loc8_)
                                                                        {
                                                                           _loc5_++;
                                                                           break loop9;
                                                                        }
                                                                     }
                                                                     addr226:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                     }
                                                                     addr296:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop() * §§pop()));
                                                                     break loop14;
                                                                  }
                                                               }
                                                               addr250:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            §§goto(addr300);
                                                         }
                                                      }
                                                      addr300:
                                                   }
                                                   §§goto(addr264);
                                                }
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc5_);
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr221);
                     }
                  }
                  while(!_loc8_)
                  {
                     §§goto(addr84);
                     §§goto(addr69);
                  }
                  addr69:
                  while(true)
                  {
                     this.§+!m§.adjustVertexData(_loc4_,0,4);
                     §§goto(addr82);
                  }
                  addr82:
               }
            }
         }
         §§goto(addr98);
      }
      
      private function §""&§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§?O§);
            if(!(_loc4_ && param1))
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr36);
                  }
               }
               if(param1 == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr44);
                  }
               }
               §§push(this.§8!m§.§!>§);
               if(_loc3_)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  if(this.§="<§)
                  {
                     while(true)
                     {
                        this.§="<§.dispose();
                        addr264:
                        while(true)
                        {
                        }
                        addr115:
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        this.§?!U§ = param1.createIndexBuffer(_loc2_ * 6);
                        loop17:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           loop16:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr115);
                              }
                              loop19:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§="<§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§@d§);
                                    addr219:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§="<§.uploadFromByteArray(this.§8!m§.§7L§,0,0,_loc2_ * 4);
                                          while(_loc3_)
                                          {
                                             this.§[!n§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§6!S§);
                                             while(_loc3_ || _loc2_)
                                             {
                                                this.§[!n§.uploadFromVector(this.§8!m§.§[I§,0,_loc2_ * 4);
                                                while(true)
                                                {
                                                   this.§^">§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§[e§);
                                                   break loop17;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§[!n§.dispose();
                                             addr257:
                                             loop4:
                                             while(true)
                                             {
                                                addr232:
                                                while(true)
                                                {
                                                   if(this.§^">§)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§^">§.dispose();
                                                         addr239:
                                                         addr156:
                                                         while(true)
                                                         {
                                                         }
                                                         if(_loc3_ || param1)
                                                         {
                                                            this.§^">§.uploadFromVector(this.§8!m§.§0!E§,0,_loc2_ * 4);
                                                            continue loop16;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!this.§?!U§)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          addr244:
                                       }
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             this.§?!U§.dispose();
                                             continue loop19;
                                          }
                                       }
                                       §§goto(addr257);
                                    }
                                 }
                              }
                           }
                           §§goto(addr264);
                        }
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr156);
                                    }
                                    break;
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr239);
                     }
                  }
                  while(true)
                  {
                     if(this.§[!n§)
                     {
                        §§goto(addr244);
                     }
                     §§goto(addr232);
                     §§goto(addr264);
                  }
               }
               §§goto(addr228);
            }
            addr36:
            return false;
         }
         addr44:
         throw new §0M§();
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§2C§ != 0)
            {
               if(!(_loc3_ && param1))
               {
                  this.§7'§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§7'§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §5!m§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!_loc6_)
         {
            if(param2 != null)
            {
               while(true)
               {
                  param2.x = _loc4_.x;
                  loop1:
                  while(!(_loc6_ && this))
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     while(true)
                     {
                        param2.width = 0;
                        for(; _loc5_; param2.height = 0,if(_loc5_ || param2)
                        {
                           if(!_loc6_)
                           {
                              break loop2;
                           }
                           continue loop1;
                        })
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                     }
                     return param2;
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr75);
      }
      
      public function §`!B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§=1§(null);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^=§ = param1;
         }
      }
      
      private function §=1§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §1l§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>>§ = null;
         var _loc2_:int = 0;
         loop0:
         for(; _loc2_ < this.§^R§; if(true)
         {
            continue;
         },§§goto(addr49))
         {
            _loc3_ = this.§^!r§[_loc2_];
            if(_loc5_)
            {
               this.§8!U§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr49:
                  while(true)
                  {
                     this.§8!U§[_loc2_ * 3 + 1] = _loc3_.y;
                     addr60:
                     while(!_loc4_)
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
               §§goto(addr60);
            }
         }
         if(_loc5_)
         {
            param1.transformVectors(this.§8!U§,this.§%`§);
         }
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            this.§=1§(param1.§[!3§);
            loop0:
            while(true)
            {
               loop1:
               while(this.§]2§ != 0)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!(_loc6_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                     if(_loc6_ && param1)
                     {
                        break loop1;
                     }
                     if(false)
                     {
                        continue loop1;
                     }
                     §§push(§50§);
                     §§push(param2 == 1);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     §§push(§§pop().§["3§(§§pop(),this.§+!m§.mipMapping,false,this.§,!#§,true));
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Context3D;
                     if((_loc4_ = param1.§`-§) == null)
                     {
                        if(!(_loc6_ && this))
                        {
                           return;
                        }
                     }
                     var _loc5_:Vector.<Number> = !!this.§,";§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                     if(!_loc6_)
                     {
                        if(param1.§%!U§ != this.§^!!§)
                        {
                           while(true)
                           {
                              this.§set §(0);
                              addr420:
                              while(true)
                              {
                                 this.§^!!§ = param1.§%!U§;
                                 addr401:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr417:
                        }
                        loop6:
                        while(true)
                        {
                           if(!this.§""&§(_loc4_))
                           {
                              loop7:
                              while(true)
                              {
                                 this.§[!n§.uploadFromVector(this.§8!m§.§[I§,0,this.§]2§ * 4);
                                 loop8:
                                 while(true)
                                 {
                                    this.§^">§.uploadFromVector(this.§8!m§.§0!E§,0,this.§]2§ * 4);
                                    addr378:
                                    while(true)
                                    {
                                       addr270:
                                       if(!(_loc7_ || param2))
                                       {
                                          continue;
                                       }
                                       _loc4_.setVertexBufferAt(0,null);
                                       loop20:
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                addr363:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      _loc4_.setProgram(§?%§.§%b§.§!!t§(_loc3_));
                                                      while(_loc7_)
                                                      {
                                                         _loc4_.setTextureAt(0,this.§+!m§.getBase(_loc4_));
                                                         while(true)
                                                         {
                                                            _loc4_.setVertexBufferAt(0,this.§^">§,§>!-§.§[+§,Context3DVertexBufferFormat.FLOAT_3);
                                                            break loop20;
                                                         }
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      continue loop6;
                                                      addr353:
                                                   }
                                                   §§goto(addr417);
                                                }
                                                §§goto(addr420);
                                             }
                                             break;
                                          }
                                          loop17:
                                          while(true)
                                          {
                                             _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                             do
                                             {
                                                _loc4_.drawTriangles(this.§?!U§,0,this.§]2§ * 2);
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr263);
                                                   }
                                                   addr307:
                                                   while(true)
                                                   {
                                                      _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§[!3§,true);
                                                      continue loop17;
                                                   }
                                                }
                                                §§goto(addr353);
                                             }
                                             while(_loc6_ && this);
                                             
                                             return;
                                          }
                                       }
                                       while(!(_loc6_ && _loc3_))
                                       {
                                          _loc4_.setVertexBufferAt(1,this.§="<§,§>!-§.§8A§,Context3DVertexBufferFormat.FLOAT_2);
                                          while(true)
                                          {
                                             _loc4_.setVertexBufferAt(2,this.§[!n§,§>!-§.§!!^§,Context3DVertexBufferFormat.FLOAT_4);
                                             §§goto(addr307);
                                             addr215:
                                             for(; !(_loc6_ && param1); _loc4_.setVertexBufferAt(2,null),if(_loc6_ && param1)
                                             {
                                                continue;
                                             },if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr261);
                                             },§§goto(addr230))
                                             {
                                                if(_loc7_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr420);
                                             }
                                          }
                                       }
                                       addr230:
                                       §§goto(addr345);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc4_.setBlendFactors(this.§'!o§,this.§%[§);
                              §§goto(addr363);
                              §§goto(addr378);
                           }
                        }
                     }
                     §§goto(addr307);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get §8-§() : Boolean
      {
         return false;
      }
      
      public function get §<!G§() : int
      {
         return this.§8!m§.§!>§ / 4;
      }
      
      public function get §9! §() : int
      {
         return this.§^R§;
      }
      
      public function get §'?§() : Number
      {
         return this.§2C§;
      }
      
      public function set §'?§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2C§ = param1;
         }
      }
      
      public function get §#!6§() : Number
      {
         return this.§ "7§;
      }
      
      public function set §#!6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ "7§ = param1;
         }
      }
      
      public function get §3d§() : Number
      {
         return this.§2D§;
      }
      
      public function set §3d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§2D§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§+!m§;
      }
   }
}
