package §,!#§
{
   import §!!U§.DisplayObject;
   import §&#H§.§%"H§;
   import §&#H§.§%"Y§;
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §;8§.§'#]§;
   import §<!>§.§ §;
   import §=]§.§%"G§;
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
   
   public class §^"n§ extends DisplayObject implements § §
   {
       
      
      private var §^"R§:Texture;
      
      private var §`#[§:Vector.<§`E§>;
      
      private var §!n§:Number;
      
      private var §^!T§:Vector.<Number>;
      
      private var §7!e§:Vector.<Number>;
      
      private var §;q§:§%"G§;
      
      private var §^d§:VertexBuffer3D;
      
      private var §%![§:VertexBuffer3D;
      
      private var §7!E§:VertexBuffer3D;
      
      private var §^",§:Vector.<uint>;
      
      private var §<#8§:IndexBuffer3D;
      
      private var §7!;§:int;
      
      private var §[!#§:int;
      
      private var §%`§:Number;
      
      protected var §'"H§:Number;
      
      private var §@#%§:Number = 0.0;
      
      private var §-"h§:Number;
      
      protected var §5#`§:Number;
      
      protected var §2!?§:Number;
      
      protected var §3"$§:Boolean;
      
      protected var §=#§:String;
      
      protected var §8G§:String;
      
      protected var §"#O§:String;
      
      private var §1!1§:int = -1;
      
      private var §>"C§:Boolean = false;
      
      private var §>!'§:Number = 0.0;
      
      public function §^"n§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               if(param1 == null)
               {
                  if(!_loc8_)
                  {
                     throw new ArgumentError("texture must not be null");
                  }
               }
               else
               {
                  this.§^"R§ = param1;
                  loop1:
                  while(true)
                  {
                     this.§3"$§ = param1.premultipliedAlpha;
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           this.§`#[§ = new Vector.<§`E§>(0,false);
                           loop4:
                           while(true)
                           {
                              this.§^!T§ = new Vector.<Number>();
                              if(_loc8_ && param1)
                              {
                                 break;
                              }
                              this.§7!e§ = new Vector.<Number>();
                              while(true)
                              {
                                 this.§;q§ = new §%"G§(0,this.§3"$§);
                                 continue loop4;
                                 loop8:
                                 for(; _loc7_ || param1; if(!(_loc8_ && param3))
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                 })
                                 {
                                    while(true)
                                    {
                                       this.§-"h§ = 0;
                                       if(!_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   this.§%`§ = param2;
                                                   continue loop8;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                             addr73:
                                          }
                                          this.§!n§ = 0;
                                          if(_loc7_)
                                          {
                                             continue loop8;
                                          }
                                          addr180:
                                          §§push(this);
                                          if(_loc7_)
                                          {
                                             §§push(param5);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc8_ && param3))
                                                {
                                                   addr254:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         §§pop();
                                                         addr274:
                                                         §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                                      }
                                                   }
                                                }
                                                §§pop().§8G§ = §§pop();
                                                break;
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr274);
                                       }
                                       break;
                                    }
                                    §§push(this);
                                    if(!_loc8_)
                                    {
                                       §§push(param4);
                                       if(_loc7_ || param3)
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr221:
                                                      if(this.§3"$§)
                                                      {
                                                         addr224:
                                                         §§push(Context3DBlendFactor.ONE);
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            addr238:
                                                            §§pop().§=#§ = §§pop();
                                                            break loop1;
                                                            addr234:
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                      §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                   }
                                                   §§goto(addr224);
                                                }
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr221);
                                 }
                              }
                           }
                           §§goto(addr198);
                        }
                        addr142:
                     }
                     break;
                  }
               }
               while(param3 > 0)
               {
                  if(_loc7_)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     this.§@2§(param3);
                  }
                  if(_loc7_)
                  {
                     §§goto(addr198);
                  }
                  else
                  {
                     §§goto(addr278);
                  }
               }
               addr198:
               return;
            }
         }
         §§goto(addr142);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§^d§)
            {
               while(true)
               {
                  this.§^d§.dispose();
                  addr137:
                  while(true)
                  {
                  }
               }
               addr134:
            }
            while(true)
            {
               if(this.§%![§)
               {
                  loop3:
                  while(true)
                  {
                     this.§%![§.dispose();
                     addr130:
                     while(true)
                     {
                        addr58:
                        if(_loc1_ || _loc1_)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(this.§7!E§)
                  {
                     §§goto(addr109);
                  }
                  §§goto(addr83);
                  §§goto(addr130);
               }
               §§goto(addr137);
            }
         }
         §§goto(addr104);
      }
      
      protected function createParticle() : §`E§
      {
         return new §`E§();
      }
      
      protected function initParticle(param1:§`E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.x = this.§5#`§;
            while(true)
            {
               param1.y = this.§2!?§;
               loop1:
               while(!_loc3_)
               {
                  param1.currentTime = 0;
                  loop2:
                  while(true)
                  {
                     param1.§,!@§ = 1;
                     while(true)
                     {
                        param1.red = Math.random();
                        while(!_loc3_)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           addr37:
                           if(_loc2_ || param1)
                           {
                              param1.alpha = 0;
                              addr54:
                              if(_loc2_)
                              {
                                 return;
                                 addr60:
                              }
                              while(!_loc3_)
                              {
                                 §§goto(addr37);
                                 §§goto(addr54);
                              }
                              while(_loc2_)
                              {
                                 param1.blue = Math.random();
                                 §§goto(addr35);
                              }
                              addr35:
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            param1.green = Math.random();
            §§goto(addr60);
         }
      }
      
      protected function advanceParticle(param1:§`E§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1);
            §§push(param1.y);
            if(!_loc4_)
            {
               §§push(param2);
               if(_loc3_)
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
               §§push(param1.currentTime);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() / param1.§,!@§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(_loc3_)
               {
                  param1.scaleX = 1 - param1.alpha;
                  while(!_loc4_)
                  {
                     param1.scaleY = 1 - param1.alpha;
                     loop3:
                     while(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           §§push(param1);
                           §§push(param1.currentTime);
                           if(!(_loc4_ && param2))
                           {
                              §§push(§§pop() + param2);
                           }
                           §§pop().currentTime = §§pop();
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §@2§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§2Y§);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§2Y§);
         if(!(_loc8_ && _loc2_))
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§%"G§;
         (_loc4_ = new §%"G§(4)).setTexCoords(0,0,0);
         if(!(_loc8_ && _loc2_))
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
               loop2:
               while(!_loc8_)
               {
                  this.§^"R§.adjustVertexData(_loc4_,0,4);
                  loop3:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        this.§`#[§.fixed = false;
                        while(_loc9_)
                        {
                           this.§^",§.fixed = false;
                           if(!_loc8_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §8!-§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§>"C§);
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
                  addr35:
                  if(param1 == null)
                  {
                     if(_loc4_ || this)
                     {
                        §§goto(addr45);
                     }
                  }
                  §§push(this.§;q§.§5#%§);
                  if(!(_loc3_ && this))
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     if(this.§^d§)
                     {
                        while(true)
                        {
                           this.§^d§.dispose();
                           addr280:
                           while(true)
                           {
                           }
                        }
                        addr277:
                     }
                     loop2:
                     while(true)
                     {
                        if(this.§%![§)
                        {
                           loop3:
                           while(true)
                           {
                              this.§%![§.dispose();
                              addr273:
                              while(true)
                              {
                              }
                              loop18:
                              while(true)
                              {
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 addr247:
                                 loop9:
                                 while(true)
                                 {
                                    this.§^d§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§<"<§);
                                    loop10:
                                    while(true)
                                    {
                                       this.§^d§.uploadFromByteArray(this.§;q§.§ ";§,0,0,_loc2_ * 4);
                                       while(true)
                                       {
                                          this.§%![§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§4v§);
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,_loc2_ * 4);
                                                loop13:
                                                while(true)
                                                {
                                                   this.§7!E§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§'!Q§);
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,_loc2_ * 4);
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§<#8§ = param1.createIndexBuffer(_loc2_ * 6);
                                                               continue loop13;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr273);
                                                         addr154:
                                                      }
                                                      break;
                                                      addr89:
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            return true;
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      else
                                                      {
                                                         addr235:
                                                         while(true)
                                                         {
                                                            this.§<#8§.dispose();
                                                            continue loop18;
                                                         }
                                                         addr235:
                                                      }
                                                   }
                                                   addr255:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      addr231:
                                                      while(true)
                                                      {
                                                         if(!this.§<#8§)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§goto(addr235);
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             addr252:
                                             while(true)
                                             {
                                                this.§7!E§.dispose();
                                                §§goto(addr255);
                                                continue loop12;
                                             }
                                          }
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop18;
                                          }
                                          §§goto(addr142);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(this.§7!E§)
                           {
                              §§goto(addr252);
                           }
                           §§goto(addr231);
                           §§goto(addr273);
                        }
                     }
                  }
                  §§goto(addr235);
               }
               addr45:
               throw new §'#]§();
            }
            addr32:
            return false;
         }
         §§goto(addr35);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§%`§ != 0)
            {
               if(!(_loc2_ && param1))
               {
                  this.§-"h§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§-"h§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §^">§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!(_loc5_ && this))
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
                     while(_loc6_ || param1)
                     {
                        param2.width = 0;
                        loop3:
                        for(; !(_loc5_ && this); while(true)
                        {
                           param2.height = 0;
                           if(_loc6_ || _loc3_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        },return param2)
                        {
                           if(_loc6_ || param2)
                           {
                              continue;
                           }
                        }
                        continue loop1;
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr71);
                     }
                     continue loop0;
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr90);
      }
      
      public function §9"x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§]#I§(null);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!'§ = param1;
         }
      }
      
      private function §]#I§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §,!6§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`E§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§7!;§)
         {
            _loc3_ = this.§`#[§[_loc2_];
            if(!(_loc4_ && this))
            {
               this.§^!T§[_loc2_ * 3] = _loc3_.x;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  this.§^!T§[_loc2_ * 3 + 1] = _loc3_.y;
                  do
                  {
                     _loc2_++;
                  }
                  while(_loc4_);
                  
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(!(_loc4_ && param1))
         {
            param1.transformVectors(this.§^!T§,this.§7!e§);
         }
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            this.§]#I§(param1.§&h§);
            while(true)
            {
               if(this.§[!#§ == 0)
               {
                  if(_loc7_ || this)
                  {
                     break;
                  }
                  while(!_loc6_)
                  {
                  }
                  continue;
                  addr69:
               }
               addr52:
               while(true)
               {
                  param1.§+#X§();
                  while(true)
                  {
                     §§push(param2);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() * this.alpha);
                        if(!_loc6_)
                        {
                           addr39:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        if(!(_loc6_ && _loc3_))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr39);
                  }
                  if(_loc6_)
                  {
                     §§goto(addr69);
                  }
               }
            }
            return;
         }
         while(false)
         {
            §§goto(addr52);
         }
         §§push(§%"Y§);
         §§push(param2 == 1);
         if(_loc7_ || param2)
         {
            §§push(!§§pop());
         }
         §§push(§§pop().§5#@§(§§pop(),this.§^"R§.mipMapping,false,this.§"#O§,true));
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:Context3D;
         if((_loc4_ = param1.§<"t§) == null)
         {
            if(_loc7_ || this)
            {
               return;
            }
         }
         else
         {
            var _loc5_:Vector.<Number> = !!this.§3"$§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
            if(_loc7_)
            {
               if(param1.§^#2§ != this.§1!1§)
               {
                  loop5:
                  while(true)
                  {
                     this.§@2§(0);
                     loop6:
                     while(true)
                     {
                        this.§1!1§ = param1.§^#2§;
                        addr412:
                        while(true)
                        {
                           loop13:
                           for(; _loc7_ || param1; while(!(_loc6_ && this))
                           {
                              if(_loc6_)
                              {
                                 continue loop5;
                              }
                              _loc4_.setVertexBufferAt(2,this.§%![§,§%"G§.§`"§,Context3DVertexBufferFormat.FLOAT_4);
                              §§goto(addr302);
                              §§goto(addr201);
                           })
                           {
                              _loc4_.setProgram(§3#J§.§2!C§.§^!_§(_loc3_));
                              while(true)
                              {
                                 _loc4_.setTextureAt(0,this.§^"R§.getBase(_loc4_));
                                 while(!_loc6_)
                                 {
                                    _loc4_.setVertexBufferAt(0,this.§7!E§,§%"G§.§42§,Context3DVertexBufferFormat.FLOAT_3);
                                    while(!(_loc6_ && param1))
                                    {
                                       _loc4_.setVertexBufferAt(1,this.§^d§,§%"G§.§&"o§,Context3DVertexBufferFormat.FLOAT_2);
                                       continue loop13;
                                    }
                                 }
                                 addr395:
                                 while(true)
                                 {
                                    this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,this.§[!#§ * 4);
                                    while(true)
                                    {
                                       this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,this.§[!#§ * 4);
                                       while(true)
                                       {
                                          addr362:
                                          while(true)
                                          {
                                             _loc4_.setBlendFactors(this.§=#§,this.§8G§);
                                             continue loop13;
                                          }
                                          loop19:
                                          while(_loc7_ || param2)
                                          {
                                             _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   _loc4_.drawTriangles(this.§<#8§,0,this.§[!#§ * 2);
                                                   while(_loc7_)
                                                   {
                                                      _loc4_.setVertexBufferAt(0,null);
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            _loc4_.setVertexBufferAt(1,null);
                                                            continue;
                                                         }
                                                         continue loop6;
                                                      }
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr201:
                                                         if(_loc7_ || param2)
                                                         {
                                                            return;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop19;
                                             }
                                             §§goto(addr335);
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
                  if(!this.§8!-§(_loc4_))
                  {
                     §§goto(addr395);
                  }
                  §§goto(addr362);
                  §§goto(addr412);
               }
            }
            §§goto(addr361);
         }
         §§goto(addr126);
      }
      
      public function get isComplete() : Boolean
      {
         return false;
      }
      
      public function get §2Y§() : int
      {
         return this.§;q§.§5#%§ / 4;
      }
      
      public function get §5!T§() : int
      {
         return this.§7!;§;
      }
      
      public function get §#&§() : Number
      {
         return this.§%`§;
      }
      
      public function set §#&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%`§ = param1;
         }
      }
      
      public function get §'#M§() : Number
      {
         return this.§5#`§;
      }
      
      public function set §'#M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5#`§ = param1;
         }
      }
      
      public function get §&#4§() : Number
      {
         return this.§2!?§;
      }
      
      public function set §&#4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!?§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§^"R§;
      }
   }
}
