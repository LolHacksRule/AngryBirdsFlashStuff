package §?U§
{
   import § !+§.§!!Q§;
   import § !+§.§%L§;
   import § !+§.§0Z§;
   import §"! §.§@+§;
   import §0j§.§,!Z§;
   import §2!-§.Texture;
   import §<!M§.§;Z§;
   import §`a§.DisplayObject;
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
   
   public class §'!>§ extends DisplayObject implements §,!Z§
   {
       
      
      private var §[!H§:Texture;
      
      private var §8!B§:Vector.<§^&§>;
      
      private var §@#§:Number;
      
      private var § !!§:Vector.<Number>;
      
      private var §;n§:Vector.<Number>;
      
      private var §"T§:§;Z§;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §[9§:VertexBuffer3D;
      
      private var §+N§:VertexBuffer3D;
      
      private var §1B§:Vector.<uint>;
      
      private var §',§:IndexBuffer3D;
      
      private var §7!U§:int;
      
      private var §@Q§:int;
      
      private var §>!N§:Number;
      
      protected var § !7§:Number;
      
      private var §5I§:Number = 0.0;
      
      private var §>e§:Number;
      
      protected var §9H§:Number;
      
      protected var §9!L§:Number;
      
      protected var §<!8§:Boolean;
      
      protected var §3!0§:String;
      
      protected var §#!Z§:String;
      
      protected var §52§:String;
      
      private var §7N§:int = -1;
      
      private var §!!C§:Boolean = false;
      
      private var §-9§:Number = 0.0;
      
      public function §'!>§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               if(param1 == null)
               {
                  if(!(_loc7_ && param2))
                  {
                     throw new ArgumentError("texture must not be null");
                  }
                  break;
               }
               this.§[!H§ = param1;
               addr118:
               if(!(_loc8_ || param1))
               {
                  continue;
               }
               this.§;n§ = new Vector.<Number>();
               loop5:
               while(true)
               {
                  this.§"T§ = new §;Z§(0,this.§<!8§);
                  loop6:
                  while(true)
                  {
                     this.§1B§ = new Vector.<uint>(0);
                     if(!_loc7_)
                     {
                        addr77:
                        if(!(_loc7_ && param1))
                        {
                           this.§>!N§ = param2;
                           while(true)
                           {
                              addr42:
                              addr201:
                              while(true)
                              {
                                 this.§>e§ = 0;
                                 if(!(_loc8_ || param1))
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              §§push(this);
                              addr31:
                              if(!(_loc7_ && param3))
                              {
                                 §§push(param5);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc8_ || param3)
                                          {
                                             addr304:
                                             §§pop();
                                             §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                          }
                                       }
                                       §§pop().§#!Z§ = §§pop();
                                       §§push(this);
                                       if(!_loc7_)
                                       {
                                          §§push(param4);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop());
                                             if(_loc8_ || param3)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§pop();
                                                      if(_loc8_)
                                                      {
                                                         addr257:
                                                         if(this.§<!8§)
                                                         {
                                                            addr260:
                                                            §§push(Context3DBlendFactor.ONE);
                                                            if(_loc8_)
                                                            {
                                                               addr269:
                                                               §§pop().§3!0§ = §§pop();
                                                               break loop0;
                                                               addr265:
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                         §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr269);
                                             }
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr257);
                                       addr309:
                                    }
                                 }
                              }
                              §§goto(addr304);
                              if(!(_loc8_ || this))
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue loop5;
                              }
                              if(true)
                              {
                                 this.§9H§ = this.§9!L§ = 0;
                                 if(_loc8_)
                                 {
                                    §§goto(addr201);
                                 }
                                 break loop0;
                              }
                              §§goto(addr42);
                              §§goto(addr201);
                           }
                        }
                        else
                        {
                           loop4:
                           while(true)
                           {
                              if(_loc8_ || param1)
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§goto(addr118);
                              }
                              addr135:
                              while(true)
                              {
                                 this.§ !!§ = new Vector.<Number>();
                                 continue loop4;
                              }
                           }
                           while(true)
                           {
                              this.§<!8§ = param1.premultipliedAlpha;
                              if(_loc7_ && param1)
                              {
                                 break loop0;
                              }
                              this.§8!B§ = new Vector.<§^&§>(0,false);
                              §§goto(addr135);
                           }
                           addr163:
                        }
                     }
                     break;
                  }
                  §§goto(addr234);
               }
            }
            while(param3 > 0)
            {
               if(!(_loc7_ && param2))
               {
                  if(!(_loc8_ || param2))
                  {
                     continue;
                  }
                  if(_loc8_ || param3)
                  {
                     this.§=!'§(param3);
                  }
                  else
                  {
                     §§goto(addr309);
                  }
               }
               §§goto(addr234);
            }
            addr234:
            return;
         }
         §§goto(addr163);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§+!>§)
            {
               while(true)
               {
                  this.§+!>§.dispose();
                  addr148:
                  while(true)
                  {
                  }
               }
               addr145:
            }
            loop2:
            while(true)
            {
               if(this.§[9§)
               {
                  loop3:
                  while(true)
                  {
                     this.§[9§.dispose();
                     addr141:
                     addr113:
                     while(true)
                     {
                     }
                     loop6:
                     while(true)
                     {
                        if(_loc1_ && this)
                        {
                           continue loop3;
                        }
                        this.§+N§.dispose();
                        loop7:
                        while(true)
                        {
                           addr80:
                           while(true)
                           {
                              if(this.§',§)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(_loc1_ && _loc1_)
                                    {
                                       break;
                                    }
                                    this.§',§.dispose();
                                 }
                                 continue loop7;
                              }
                              addr63:
                              while(true)
                              {
                                 this.§ !!§ = null;
                                 while(!_loc1_)
                                 {
                                    this.§;n§ = null;
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             break loop6;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 §§goto(addr145);
                              }
                              continue loop7;
                           }
                           continue loop2;
                        }
                        if(!(_loc1_ && this))
                        {
                           return;
                        }
                     }
                     §§goto(addr141);
                  }
               }
               while(true)
               {
                  if(this.§+N§)
                  {
                     §§goto(addr113);
                  }
                  §§goto(addr80);
                  §§goto(addr141);
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function createParticle() : §^&§
      {
         return new §^&§();
      }
      
      protected function initParticle(param1:§^&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.x = this.§9H§;
            loop0:
            while(true)
            {
               param1.y = this.§9!L§;
               addr116:
               while(true)
               {
                  param1.§>!Y§ = 0;
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function advanceParticle(param1:§^&§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            §§push(param1.y);
            if(!_loc4_)
            {
               §§push(param2);
               if(!_loc4_)
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
               §§push(param1.§>!Y§);
               if(_loc3_)
               {
                  §§push(§§pop() / param1.§'"§);
               }
               §§pop().alpha = §§pop() - §§pop();
               addr71:
               if(_loc4_ && this)
               {
                  continue;
               }
               §§push(param1);
               §§push(param1.§>!Y§);
               if(_loc3_ || param2)
               {
                  §§push(§§pop() + param2);
               }
               §§pop().§>!Y§ = §§pop();
               addr78:
               if(!(_loc4_ && _loc3_))
               {
                  addr49:
                  if(_loc4_)
                  {
                     while(true)
                     {
                        param1.scaleX = 1 - param1.alpha;
                        while(true)
                        {
                           param1.scaleY = 1 - param1.alpha;
                           addr69:
                           while(_loc3_)
                           {
                              §§goto(addr71);
                              §§goto(addr78);
                           }
                        }
                        §§goto(addr49);
                     }
                     addr99:
                  }
                  return;
               }
               §§goto(addr69);
            }
         }
         §§goto(addr99);
      }
      
      private function §=!'§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§7!N§);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§7!N§);
         if(!_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§;Z§;
         (_loc4_ = new §;Z§(4)).setTexCoords(0,0,0);
         if(!_loc8_)
         {
            _loc4_.setTexCoords(1,1,0);
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
               while(_loc9_)
               {
                  _loc4_.setTexCoords(3,1,1);
                  while(!(_loc8_ && param1))
                  {
                     this.§[!H§.adjustVertexData(_loc4_,0,4);
                     loop3:
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           this.§8!B§.fixed = false;
                           continue loop3;
                        }
                     }
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr69);
                     }
                     §§goto(addr119);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §6j§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§!!C§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr32);
                  }
               }
               if(param1 == null)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     throw new §@+§();
                  }
               }
               §§push(this.§"T§.§[O§);
               if(_loc4_)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && param1))
               {
                  if(this.§+!>§)
                  {
                     while(true)
                     {
                        this.§+!>§.dispose();
                        addr270:
                        while(true)
                        {
                        }
                     }
                     addr267:
                  }
                  loop2:
                  while(true)
                  {
                     if(this.§[9§)
                     {
                        while(true)
                        {
                           this.§[9§.dispose();
                           addr263:
                           while(true)
                           {
                           }
                        }
                        addr250:
                     }
                     loop5:
                     while(true)
                     {
                        if(this.§+N§)
                        {
                           while(true)
                           {
                              this.§+N§.dispose();
                              addr245:
                              while(true)
                              {
                              }
                           }
                           addr242:
                        }
                        loop8:
                        while(true)
                        {
                           if(this.§',§)
                           {
                              while(true)
                              {
                                 this.§',§.dispose();
                                 addr235:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr267);
                                    }
                                 }
                                 continue loop2;
                              }
                              addr232:
                           }
                           while(true)
                           {
                              this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§=!1§);
                              loop12:
                              for(; _loc4_; if(_loc3_ && param1)
                              {
                                 continue;
                              },§§goto(addr119))
                              {
                                 this.§+!>§.uploadFromByteArray(this.§"T§.§3v§,0,0,_loc2_ * 4);
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          this.§[9§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§[3§);
                                          loop14:
                                          for(; _loc4_; while(!(_loc3_ && param1))
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   this.§',§ = param1.createIndexBuffer(_loc2_ * 6);
                                                   §§goto(addr103);
                                                }
                                                §§goto(addr94);
                                                addr155:
                                             }
                                             §§goto(addr87);
                                          })
                                          {
                                             if(_loc4_)
                                             {
                                                this.§[9§.uploadFromVector(this.§"T§.§@'§,0,_loc2_ * 4);
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   this.§+N§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§"1§);
                                                   while(true)
                                                   {
                                                      this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,_loc2_ * 4);
                                                      continue loop14;
                                                      addr103:
                                                      while(!(_loc3_ && param1))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop15;
                                                         this.§',§.uploadFromVector(this.§1B§,0,_loc2_ * 6);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr87:
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               return true;
                                                               addr94:
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr250);
                                             }
                                             else
                                             {
                                                §§goto(addr242);
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr232);
                                    §§goto(addr235);
                                 }
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr32);
         }
         addr32:
         return false;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§>!N§ != 0)
            {
               if(_loc2_ || this)
               {
                  this.§>e§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>e§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §`! §(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc6_ || param1)
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
                     while(!_loc5_)
                     {
                        if(_loc6_ || this)
                        {
                           while(true)
                           {
                              param2.width = 0;
                              while(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    param2.height = 0;
                                    if(_loc6_)
                                    {
                                       return param2;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           addr83:
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr83);
      }
      
      public function §,9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§[%§(null);
         }
         while(!_loc3_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-9§ = param1;
         }
      }
      
      private function §[%§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §+8§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§^&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!U§)
         {
            _loc3_ = this.§8!B§[_loc2_];
            if(_loc5_ || _loc3_)
            {
               this.§ !!§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr66:
                  while(true)
                  {
                     this.§ !!§[_loc2_ * 3 + 1] = _loc3_.y;
                     continue loop1;
                  }
               }
               addr86:
            }
            while(true)
            {
               _loc2_++;
               if(!(_loc5_ || this))
               {
                  continue;
               }
               if(_loc5_ || this)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr86);
               }
               §§goto(addr66);
            }
         }
         if(_loc5_ || _loc3_)
         {
            param1.transformVectors(this.§ !!§,this.§;n§);
         }
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            this.§[%§(param1.§5!8§);
         }
         do
         {
            loop1:
            while(true)
            {
               if(this.§@Q§ == 0)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     addr25:
                     while(true)
                     {
                        §§push(param2);
                        if(_loc7_)
                        {
                           §§push(§§pop() * this.alpha);
                           if(!_loc6_)
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
                     if(false)
                     {
                        continue loop1;
                     }
                     §§push(§!!Q§);
                     §§push(param2 == 1);
                     if(_loc7_ || param2)
                     {
                        §§push(!§§pop());
                     }
                     §§push(§§pop().§4=§(§§pop(),this.§[!H§.mipMapping,false,this.§52§,true));
                     if(_loc7_)
                     {
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Context3D;
                     if((_loc4_ = param1.§9!>§) == null)
                     {
                        if(_loc7_)
                        {
                           return;
                        }
                     }
                     var _loc5_:Vector.<Number> = !!this.§<!8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                     if(!_loc6_)
                     {
                        if(param1.§=6§ != this.§7N§)
                        {
                           addr402:
                           this.§=!'§(0);
                           this.§7N§ = param1.§=6§;
                           addr386:
                           addr405:
                        }
                        if(!this.§6j§(_loc4_))
                        {
                           if(!(_loc6_ && this))
                           {
                              this.§[9§.uploadFromVector(this.§"T§.§@'§,0,this.§@Q§ * 4);
                           }
                           this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,this.§@Q§ * 4);
                           addr356:
                           addr380:
                        }
                        _loc4_.setBlendFactors(this.§3!0§,this.§#!Z§);
                        addr341:
                        if(_loc7_)
                        {
                           _loc4_.setProgram(§0Z§.§4J§.§3!3§(_loc3_));
                           _loc4_.setTextureAt(0,this.§[!H§.getBase(_loc4_));
                           _loc4_.setVertexBufferAt(0,this.§+N§,§;Z§.§%E§,Context3DVertexBufferFormat.FLOAT_3);
                           _loc4_.setVertexBufferAt(1,this.§+!>§,§;Z§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
                           _loc4_.setVertexBufferAt(2,this.§[9§,§;Z§.§>`§,Context3DVertexBufferFormat.FLOAT_4);
                           _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§5!8§,true);
                           addr316:
                           addr294:
                           addr305:
                           addr333:
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                    _loc4_.drawTriangles(this.§',§,0,this.§@Q§ * 2);
                                    addr246:
                                    addr257:
                                    if(!_loc6_)
                                    {
                                       _loc4_.setVertexBufferAt(0,null);
                                       addr221:
                                       if(_loc7_ || this)
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             _loc4_.setVertexBufferAt(1,null);
                                             addr180:
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            _loc4_.setVertexBufferAt(2,null);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr316);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr356);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr405);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr333);
                                 }
                                 §§goto(addr380);
                              }
                              §§goto(addr341);
                           }
                           addr325:
                           §§goto(addr325);
                        }
                     }
                     §§goto(addr402);
                  }
               }
               §§goto(addr25);
            }
         }
         while(!_loc7_);
         
      }
      
      public function get §;!§() : Boolean
      {
         return false;
      }
      
      public function get §7!N§() : int
      {
         return this.§"T§.§[O§ / 4;
      }
      
      public function get §<!4§() : int
      {
         return this.§7!U§;
      }
      
      public function get §'@§() : Number
      {
         return this.§>!N§;
      }
      
      public function set §'@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>!N§ = param1;
         }
      }
      
      public function get §=#§() : Number
      {
         return this.§9H§;
      }
      
      public function set §=#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9H§ = param1;
         }
      }
      
      public function get §if §() : Number
      {
         return this.§9!L§;
      }
      
      public function set §if §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§9!L§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[!H§;
      }
   }
}
