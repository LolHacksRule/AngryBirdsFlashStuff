package § <§
{
   import §"&§.§=q§;
   import §%!j§.§%K§;
   import §%!j§.§&Y§;
   import §%!j§.§,5§;
   import §+!-§.DisplayObject;
   import §0!%§.Texture;
   import §]!R§.§2"2§;
   import §`!=§.§?!X§;
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
   
   public class §-!;§ extends DisplayObject implements §=q§
   {
       
      
      private var §=#§:Texture;
      
      private var §]!r§:Vector.<§#!G§>;
      
      private var §4j§:Number;
      
      private var §9d§:Vector.<Number>;
      
      private var §>1§:Vector.<Number>;
      
      private var §2!b§:§?!X§;
      
      private var §6!7§:VertexBuffer3D;
      
      private var §6S§:VertexBuffer3D;
      
      private var §%I§:VertexBuffer3D;
      
      private var §^!;§:Vector.<uint>;
      
      private var §&Q§:IndexBuffer3D;
      
      private var §-!J§:int;
      
      private var §6!y§:int;
      
      private var §-E§:Number;
      
      protected var §3"6§:Number;
      
      private var §^!s§:Number = 0.0;
      
      private var §9-§:Number;
      
      protected var §9!^§:Number;
      
      protected var §,!^§:Number;
      
      protected var §[!k§:Boolean;
      
      protected var §-!V§:String;
      
      protected var §&!A§:String;
      
      protected var §'"3§:String;
      
      private var §>!!§:int = -1;
      
      private var §8!=§:Boolean = false;
      
      private var § N§:Number = 0.0;
      
      public function §-!;§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super();
            if(!(_loc7_ && this))
            {
               if(param1 != null)
               {
                  loop0:
                  while(true)
                  {
                     this.§=#§ = param1;
                     loop1:
                     while(true)
                     {
                        this.§[!k§ = param1.premultipliedAlpha;
                        if(!_loc8_)
                        {
                           break;
                        }
                        this.§]!r§ = new Vector.<§#!G§>(0,false);
                        if(!(_loc8_ || this))
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           this.§9d§ = new Vector.<Number>();
                           if(_loc8_)
                           {
                              this.§>1§ = new Vector.<Number>();
                              if(!_loc7_)
                              {
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 this.§2!b§ = new §?!X§(0,this.§[!k§);
                                 loop4:
                                 while(true)
                                 {
                                    this.§^!;§ = new Vector.<uint>(0);
                                    while(!(_loc7_ && param1))
                                    {
                                       this.§-E§ = param2;
                                       if(!(_loc7_ && param2))
                                       {
                                          continue loop4;
                                       }
                                       addr31:
                                       if(_loc7_ && this)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             this.§9-§ = 0;
                                             if(!(_loc7_ && this))
                                             {
                                                while(true)
                                                {
                                                   this.§4j§ = 0;
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr31);
                                                   }
                                                   break;
                                                }
                                                §§push(this);
                                                if(_loc8_ || param1)
                                                {
                                                   §§push(param5);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc8_ || param3)
                                                      {
                                                         addr285:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr304:
                                                               §§pop();
                                                               §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                                            }
                                                         }
                                                         §§pop().§&!A§ = §§pop();
                                                         break;
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr304);
                                                addr191:
                                                addr51:
                                             }
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this);
                                             if(_loc8_ || param1)
                                             {
                                                §§push(param4);
                                                if(_loc8_ || this)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_ || param3)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc8_ || param3)
                                                         {
                                                            addr247:
                                                            §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               addr250:
                                                               if(!this.§[!k§)
                                                               {
                                                                  addr262:
                                                                  §§pop().§-!V§ = Context3DBlendFactor.SOURCE_ALPHA;
                                                                  while(!_loc8_)
                                                                  {
                                                                     continue loop7;
                                                                     §§goto(addr262);
                                                                  }
                                                                  while(param3 > 0)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           addr209:
                                                                           this.§?-§(param3);
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     break loop1;
                                                                  }
                                                                  addr263:
                                                                  addr192:
                                                                  return;
                                                                  addr265:
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            §§push(Context3DBlendFactor.ONE);
                                                            if(_loc7_)
                                                            {
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr250);
                                          }
                                          addr40:
                                          addr309:
                                       }
                                       this.§9!^§ = this.§,!^§ = 0;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr191);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr265);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr192);
                  }
               }
               addr165:
               throw new ArgumentError("texture must not be null");
            }
            §§goto(addr309);
         }
         §§goto(addr51);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§6!7§)
            {
               while(true)
               {
                  this.§6!7§.dispose();
                  addr133:
                  while(true)
                  {
                  }
                  addr76:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  this.§>1§ = null;
                  while(!_loc1_)
                  {
                     super.dispose();
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           addr43:
                           if(!(_loc2_ || this))
                           {
                              loop9:
                              for(; !_loc1_; §§goto(addr43))
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§&Q§.dispose();
                                       addr100:
                                       while(true)
                                       {
                                          §§goto(addr68);
                                       }
                                    }
                                    addr97:
                                 }
                                 else
                                 {
                                    §§goto(addr133);
                                 }
                                 while(true)
                                 {
                                    if(this.§%I§)
                                    {
                                       §§goto(addr105);
                                    }
                                    addr84:
                                    while(true)
                                    {
                                       if(!this.§&Q§)
                                       {
                                          addr68:
                                          §§goto(addr50);
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr84);
                              }
                           }
                           addr50:
                           while(true)
                           {
                              this.§9d§ = null;
                              addr72:
                              addr126:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr76);
                                 }
                                 addr105:
                                 while(true)
                                 {
                                    this.§%I§.dispose();
                                    break loop9;
                                 }
                              }
                              addr126:
                              while(true)
                              {
                              }
                              continue loop14;
                           }
                           return;
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr72);
                  }
                  while(true)
                  {
                     this.§6S§.dispose();
                     §§goto(addr126);
                  }
                  addr113:
               }
            }
            while(true)
            {
               if(this.§6S§)
               {
                  §§goto(addr113);
               }
               §§goto(addr101);
               §§goto(addr133);
            }
         }
         §§goto(addr97);
      }
      
      protected function createParticle() : §#!G§
      {
         return new §#!G§();
      }
      
      protected function initParticle(param1:§#!G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            param1.x = this.§9!^§;
            loop0:
            while(true)
            {
               param1.y = this.§,!^§;
               loop1:
               while(true)
               {
                  param1.§=""§ = 0;
                  loop2:
                  while(true)
                  {
                     param1.§4!4§ = 1;
                     while(true)
                     {
                        param1.red = Math.random();
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           param1.green = Math.random();
                           loop5:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 param1.blue = Math.random();
                                 while(!_loc2_)
                                 {
                                    param1.alpha = 0;
                                    if(!_loc2_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function advanceParticle(param1:§#!G§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc3_ || param1)
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
               §§push(param1.§=""§);
               if(_loc3_)
               {
                  §§push(§§pop() / param1.§4!4§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(true)
               {
                  param1.scaleX = 1 - param1.alpha;
                  §§goto(addr86);
               }
            }
         }
         addr86:
         while(true)
         {
            param1.scaleY = 1 - param1.alpha;
            do
            {
               §§push(param1);
               §§push(param1.§=""§);
               if(!_loc4_)
               {
                  §§push(§§pop() + param2);
               }
               §§pop().§=""§ = §§pop();
            }
            while(_loc4_ && param1);
            
            if(!(_loc4_ && param2))
            {
               if(_loc3_ || param1)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §?-§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§4!A§);
         if(!(_loc8_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§4!A§);
         if(!_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§?!X§;
         (_loc4_ = new §?!X§(4)).setTexCoords(0,0,0);
         if(!(_loc8_ && this))
         {
            _loc4_.setTexCoords(1,1,0);
            loop0:
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
               addr102:
               while(true)
               {
                  _loc4_.setTexCoords(3,1,1);
                  addr95:
                  while(true)
                  {
                     this.§=#§.adjustVertexData(_loc4_,0,4);
                     loop3:
                     while(_loc9_)
                     {
                        while(true)
                        {
                           this.§]!r§.fixed = false;
                           addr76:
                           while(!_loc8_)
                           {
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§^!;§.fixed = false;
            if(_loc9_)
            {
               if(!_loc8_)
               {
                  if(_loc9_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr102);
               }
               §§goto(addr95);
            }
            §§goto(addr76);
         }
         §§push(_loc2_);
         if(!(_loc8_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop7:
         while(true)
         {
            §§push(_loc5_);
            if(_loc9_ || _loc2_)
            {
               §§push(_loc3_);
               if(_loc9_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc8_ && param1))
                     {
                        if(_loc9_)
                        {
                           this.§]!r§.fixed = true;
                           loop16:
                           while(!(_loc8_ && this))
                           {
                              this.§^!;§.fixed = true;
                              while(true)
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop16;
                              }
                              while(true)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr310);
                              }
                           }
                           while(true)
                           {
                              _loc7_++;
                              §§goto(addr281);
                           }
                           addr208:
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr208);
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        §§goto(addr327);
                        §§push(4);
                     }
                  }
                  §§goto(addr329);
               }
               §§goto(addr271);
            }
            §§goto(addr256);
         }
      }
      
      private function §-!D§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§8!=§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr34:
                     if(param1 == null)
                     {
                        if(!(_loc4_ && this))
                        {
                           throw new §2"2§();
                        }
                     }
                     §§push(this.§2!b§.§8!B§);
                     if(!_loc4_)
                     {
                        §§push(int(§§pop() / 4));
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        if(this.§6!7§)
                        {
                           loop0:
                           while(true)
                           {
                              this.§6!7§.dispose();
                              addr269:
                              addr204:
                              while(true)
                              {
                              }
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              this.§6S§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§-p§);
                              loop13:
                              while(true)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    if(_loc3_)
                                    {
                                       addr182:
                                       if(_loc3_ || param1)
                                       {
                                          this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,_loc2_ * 4);
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§%I§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§0[§);
                                                   do
                                                   {
                                                      this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,_loc2_ * 4);
                                                      continue loop13;
                                                   }
                                                   while(_loc4_);
                                                   
                                                   return true;
                                                }
                                                addr262:
                                                loop4:
                                                while(true)
                                                {
                                                   addr235:
                                                   while(true)
                                                   {
                                                      if(this.§%I§)
                                                      {
                                                         while(!_loc4_)
                                                         {
                                                            this.§%I§.dispose();
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                         addr239:
                                                      }
                                                      while(true)
                                                      {
                                                         if(this.§&Q§)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§&Q§.dispose();
                                                               break loop13;
                                                               §§goto(addr182);
                                                            }
                                                            addr231:
                                                         }
                                                         addr212:
                                                         while(true)
                                                         {
                                                            this.§6!7§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§5;§);
                                                            break loop14;
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             break;
                                             addr99:
                                             while(_loc3_ || param1)
                                             {
                                                this.§&Q§.uploadFromVector(this.§^!;§,0,_loc2_ * 6);
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop13;
                                                }
                                                §§goto(addr88);
                                             }
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§6!7§.uploadFromByteArray(this.§2!b§.§3!T§,0,0,_loc2_ * 4);
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §§goto(addr204);
                                                      continue loop13;
                                                   }
                                                   continue loop0;
                                                   addr202:
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr244);
                                          }
                                          while(true)
                                          {
                                             this.§6S§.dispose();
                                             §§goto(addr262);
                                          }
                                          addr249:
                                       }
                                       §§goto(addr231);
                                    }
                                    break;
                                 }
                                 §§goto(addr202);
                              }
                              while(true)
                              {
                                 §§goto(addr212);
                              }
                              addr234:
                           }
                        }
                        while(true)
                        {
                           if(this.§6S§)
                           {
                              §§goto(addr249);
                           }
                           §§goto(addr235);
                           §§goto(addr269);
                        }
                     }
                     §§goto(addr234);
                  }
               }
               §§goto(addr34);
            }
            return §§pop();
         }
         §§goto(addr34);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§-E§ != 0)
            {
               if(_loc2_ || this)
               {
                  addr54:
                  this.§9-§ = param1;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9-§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §1!%§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc6_)
         {
            if(param2 != null)
            {
               while(true)
               {
                  param2.x = _loc4_.x;
                  loop1:
                  while(true)
                  {
                     param2.y = _loc4_.y;
                     addr78:
                     loop2:
                     while(true)
                     {
                        param2.width = 0;
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     if(_loc6_ || param2)
                     {
                        return param2;
                     }
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr78);
      }
      
      public function §6K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
            do
            {
               this.§3_§(null);
            }
            while(_loc2_);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§ N§ = param1;
         }
      }
      
      private function §3_§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §"4§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§#!G§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§-!J§)
         {
            _loc3_ = this.§]!r§[_loc2_];
            if(_loc5_)
            {
               this.§9d§[_loc2_ * 3] = _loc3_.x;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§9d§[_loc2_ * 3 + 1] = _loc3_.y;
                     do
                     {
                        _loc2_++;
                     }
                     while(_loc4_);
                     
                     if(!(_loc5_ || _loc2_))
                     {
                        break;
                        addr54:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr54);
         }
         if(!(_loc4_ && this))
         {
            param1.transformVectors(this.§9d§,this.§>1§);
         }
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            this.§3_§(param1.§'D§);
            do
            {
               loop1:
               while(true)
               {
                  if(this.§6!y§ == 0)
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        addr25:
                        addr38:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * this.alpha);
                              if(!_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        §§push(§,5§);
                        §§push(param2 == 1);
                        if(_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop().§=S§(§§pop(),this.§=#§.mipMapping,false,this.§'"3§,true));
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Context3D;
                        if((_loc4_ = param1.§-!K§) == null)
                        {
                           if(_loc7_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           var _loc5_:Vector.<Number> = !!this.§[!k§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                           if(_loc7_ || _loc3_)
                           {
                              if(param1.§ !Z§ != this.§>!!§)
                              {
                                 while(true)
                                 {
                                    this.§?-§(0);
                                    addr420:
                                    while(true)
                                    {
                                       this.§>!!§ = param1.§ !Z§;
                                       addr401:
                                       while(true)
                                       {
                                       }
                                    }
                                    loop21:
                                    for(; _loc7_ || param2; if(_loc7_ || param2)
                                    {
                                       return;
                                    })
                                    {
                                       _loc4_.setVertexBufferAt(0,null);
                                       loop22:
                                       while(true)
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             addr220:
                                             if(!(_loc6_ && param1))
                                             {
                                                _loc4_.setVertexBufferAt(1,null);
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr190:
                                                      if(!(_loc7_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   addr254:
                                                   while(true)
                                                   {
                                                      _loc4_.drawTriangles(this.§&Q§,0,this.§6!y§ * 2);
                                                      continue loop21;
                                                   }
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                      §§goto(addr254);
                                                   }
                                                   addr315:
                                                   addr393:
                                                   while(_loc7_ || param1)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         _loc4_.setVertexBufferAt(1,this.§6!7§,§?!X§.§<[§,Context3DVertexBufferFormat.FLOAT_2);
                                                         break loop22;
                                                      }
                                                      §§goto(addr420);
                                                   }
                                                   while(_loc7_)
                                                   {
                                                      this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,this.§6!y§ * 4);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         addr356:
                                                         while(true)
                                                         {
                                                            _loc4_.setBlendFactors(this.§-!V§,this.§&!A§);
                                                            addr363:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc4_.setProgram(§%K§.§`9§.§^"9§(_loc3_));
                                                               break loop19;
                                                               addr333:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     _loc4_.setVertexBufferAt(0,this.§%I§,§?!X§.§^!5§,Context3DVertexBufferFormat.FLOAT_3);
                                                                     §§goto(addr315);
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr401);
                                                   §§goto(addr190);
                                                }
                                                while(!(_loc6_ && this))
                                                {
                                                   _loc4_.setTextureAt(0,this.§=#§.getBase(_loc4_));
                                                   §§goto(addr333);
                                                }
                                                while(true)
                                                {
                                                   this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,this.§6!y§ * 4);
                                                   §§goto(addr393);
                                                   §§goto(addr348);
                                                }
                                                addr348:
                                                addr382:
                                             }
                                             break;
                                          }
                                          §§goto(addr279);
                                          if(_loc7_ || _loc3_)
                                          {
                                             continue loop21;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             _loc4_.setVertexBufferAt(2,this.§6S§,§?!X§.§-!e§,Context3DVertexBufferFormat.FLOAT_4);
                                             §§goto(addr279);
                                          }
                                          break;
                                          §§goto(addr220);
                                       }
                                       §§goto(addr333);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!this.§-!D§(_loc4_))
                                 {
                                    §§goto(addr382);
                                 }
                                 §§goto(addr356);
                                 §§goto(addr401);
                              }
                           }
                           §§goto(addr363);
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr25);
               }
            }
            while(!_loc7_);
            
            return;
         }
         §§goto(addr38);
      }
      
      public function get §3r§() : Boolean
      {
         return false;
      }
      
      public function get §4!A§() : int
      {
         return this.§2!b§.§8!B§ / 4;
      }
      
      public function get §20§() : int
      {
         return this.§-!J§;
      }
      
      public function get §+!Y§() : Number
      {
         return this.§-E§;
      }
      
      public function set §+!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-E§ = param1;
         }
      }
      
      public function get §+D§() : Number
      {
         return this.§9!^§;
      }
      
      public function set §+D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9!^§ = param1;
         }
      }
      
      public function get §!Z§() : Number
      {
         return this.§,!^§;
      }
      
      public function set §!Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!^§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
   }
}
