package §'!B§
{
   import §,%§.§&!Z§;
   import §-!`§.DisplayObject;
   import §0!-§.Texture;
   import §6!@§.§3!'§;
   import §6x§.§9!§;
   import §@!X§.§"W§;
   import §@!X§.§#L§;
   import §@!X§.§7j§;
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
   
   public class §;V§ extends DisplayObject implements §&!Z§
   {
       
      
      private var §8w§:Texture;
      
      private var §%4§:Vector.<§+!Q§>;
      
      private var §1!d§:Number;
      
      private var §,!s§:Vector.<Number>;
      
      private var §'!Z§:Vector.<Number>;
      
      private var §8<§:§9!§;
      
      private var §+[§:VertexBuffer3D;
      
      private var §'9§:VertexBuffer3D;
      
      private var §>b§:VertexBuffer3D;
      
      private var §"=§:Vector.<uint>;
      
      private var §7[§:IndexBuffer3D;
      
      private var §>7§:int;
      
      private var §]!O§:int;
      
      private var §5!8§:Number;
      
      protected var §&A§:Number;
      
      private var §0D§:Number = 0.0;
      
      private var §,!W§:Number;
      
      protected var §<!t§:Number;
      
      protected var §+J§:Number;
      
      protected var §2!'§:Boolean;
      
      protected var §;!J§:String;
      
      protected var §@V§:String;
      
      protected var §'!L§:String;
      
      private var §3+§:int = -1;
      
      private var §'!F§:Boolean = false;
      
      private var §<!N§:Number = 0.0;
      
      public function §;V§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            if(_loc8_)
            {
               if(param1 == null)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr28);
                  }
               }
               else
               {
                  this.§8w§ = param1;
                  this.§2!'§ = param1.premultipliedAlpha;
                  if(!(_loc7_ && this))
                  {
                     this.§%4§ = new Vector.<§+!Q§>(0,false);
                     addr54:
                     this.§,!s§ = new Vector.<Number>();
                     this.§'!Z§ = new Vector.<Number>();
                     if(_loc8_)
                     {
                        this.§8<§ = new §9!§(0,this.§2!'§);
                        this.§"=§ = new Vector.<uint>(0);
                        this.§5!8§ = param2;
                        if(_loc8_ || param1)
                        {
                           addr103:
                           this.§,!W§ = 0;
                           if(_loc8_)
                           {
                              addr108:
                              this.§1!d§ = 0;
                              this.§<!t§ = this.§+J§ = 0;
                              §§push(this);
                              if(!_loc7_)
                              {
                                 §§push(param5);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             addr133:
                                             §§pop();
                                             §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                          }
                                       }
                                    }
                                    §§pop().§@V§ = §§pop();
                                    if(!(_loc7_ && param2))
                                    {
                                       addr145:
                                       §§push(this);
                                       if(_loc8_)
                                       {
                                          §§push(param4);
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(§§pop());
                                             if(_loc8_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      addr178:
                                                      §§pop();
                                                      if(_loc8_ || this)
                                                      {
                                                         addr186:
                                                         if(this.§2!'§)
                                                         {
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§push(Context3DBlendFactor.ONE);
                                                      if(!_loc7_)
                                                      {
                                                         addr194:
                                                      }
                                                   }
                                                }
                                                addr198:
                                                §§pop().§;!J§ = Context3DBlendFactor.SOURCE_ALPHA;
                                                §§goto(addr199);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr103);
               }
               addr199:
               if(param3 > 0)
               {
                  addr202:
                  this.§>z§(param3);
               }
               return;
            }
            §§goto(addr54);
         }
         addr28:
         throw new ArgumentError("texture must not be null");
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§+[§)
            {
               this.§+[§.dispose();
               if(_loc2_)
               {
                  addr27:
                  if(this.§'9§)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§'9§.dispose();
                     }
                  }
                  if(this.§>b§)
                  {
                     if(_loc2_)
                     {
                        this.§>b§.dispose();
                        addr68:
                        if(this.§7[§)
                        {
                           this.§7[§.dispose();
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr81);
                           }
                           super.dispose();
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr68);
               }
               addr81:
               this.§,!s§ = null;
               this.§'!Z§ = null;
               if(!_loc2_)
               {
               }
               return;
            }
            §§goto(addr27);
         }
         §§goto(addr68);
      }
      
      protected function createParticle() : §+!Q§
      {
         return new §+!Q§();
      }
      
      protected function initParticle(param1:§+!Q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         param1.x = this.§<!t§;
         param1.y = this.§+J§;
         param1.currentTime = 0;
         param1.§=W§ = 1;
         if(!(_loc2_ && this))
         {
            param1.red = Math.random();
            if(_loc3_ || _loc3_)
            {
               addr69:
               param1.green = Math.random();
               param1.blue = Math.random();
            }
            param1.alpha = 0;
            return;
         }
         §§goto(addr69);
      }
      
      protected function advanceParticle(param1:§+!Q§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc3_ || this)
            {
               §§push(param2);
               if(_loc3_)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(_loc3_ || this)
            {
               §§push(param1);
               §§push(1);
               §§push(param1.currentTime);
               if(_loc3_)
               {
                  §§push(§§pop() / param1.§=W§);
               }
               §§pop().alpha = §§pop() - §§pop();
               if(_loc3_ || this)
               {
                  param1.scaleX = 1 - param1.alpha;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr98:
                     param1.scaleY = 1 - param1.alpha;
                     if(!(_loc4_ && param2))
                     {
                        addr111:
                        §§push(param1);
                        §§push(param1.currentTime);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() + param2);
                        }
                        §§pop().currentTime = §§pop();
                     }
                  }
                  §§goto(addr111);
               }
               return;
            }
            §§goto(addr111);
         }
         §§goto(addr98);
      }
      
      private function §>z§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§0!A§);
         if(!(_loc9_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§0!A§);
         if(!(_loc9_ && _loc2_))
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§9!§;
         (_loc4_ = new §9!§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         if(_loc8_ || _loc3_)
         {
            _loc4_.setTexCoords(3,1,1);
            if(!_loc9_)
            {
               this.§8w§.adjustVertexData(_loc4_,0,4);
            }
            this.§%4§.fixed = false;
         }
         this.§"=§.fixed = false;
         §§push(_loc2_);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(_loc3_);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(_loc5_);
                  if(!(_loc9_ && param1))
                  {
                     §§push(4);
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                     §§push(int(§§pop() * §§pop()));
                     if(_loc8_ || param1)
                     {
                        _loc6_ = §§pop();
                        if(!_loc9_)
                        {
                           this.§%4§.push(this.createParticle());
                           if(!_loc9_)
                           {
                              §§push(0);
                              if(_loc9_ && _loc2_)
                              {
                                 continue loop1;
                              }
                              addr152:
                              _loc7_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       §§push(3);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          this.§8<§.append(_loc4_);
                                          if(!_loc8_)
                                          {
                                             break loop2;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                    addr167:
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr214);
                        }
                        continue loop0;
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr167);
               }
               this.§%4§.fixed = true;
               addr214:
               this.§"=§.fixed = true;
               if(!(_loc9_ && _loc2_))
               {
                  this.§'!F§ = true;
               }
               return;
            }
         }
      }
      
      private function §!E§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§'!F§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     §§goto(addr32);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        addr48:
                        §§push(this.§8<§.§9m§);
                        if(_loc4_ || this)
                        {
                           §§push(int(§§pop() / 4));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           if(this.§+[§)
                           {
                              if(!_loc3_)
                              {
                                 addr74:
                                 this.§+[§.dispose();
                                 if(_loc4_)
                                 {
                                    addr79:
                                    if(this.§'9§)
                                    {
                                       this.§'9§.dispose();
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr92:
                                          if(this.§>b§)
                                          {
                                             this.§>b§.dispose();
                                             if(_loc4_ || this)
                                             {
                                                addr115:
                                                if(this.§7[§)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      this.§7[§.dispose();
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr130:
                                                         this.§+[§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§4>§);
                                                         if(!_loc3_)
                                                         {
                                                            addr141:
                                                            this.§+[§.uploadFromByteArray(this.§8<§.§>!I§,0,0,_loc2_ * 4);
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr115);
                                       }
                                       addr154:
                                       this.§'9§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§#!R§);
                                       if(_loc4_)
                                       {
                                          addr165:
                                          this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,_loc2_ * 4);
                                          addr175:
                                          this.§>b§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§1W§);
                                          if(!_loc3_)
                                          {
                                             this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,_loc2_ * 4);
                                             if(!_loc3_)
                                             {
                                                this.§7[§ = param1.createIndexBuffer(_loc2_ * 6);
                                                if(!_loc3_)
                                                {
                                                   addr217:
                                                   this.§7[§.uploadFromVector(this.§"=§,0,_loc2_ * 6);
                                                }
                                             }
                                          }
                                          §§goto(addr217);
                                       }
                                       return true;
                                    }
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr48);
               }
               throw new §3!'§();
            }
            addr32:
            return false;
         }
         §§goto(addr48);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§5!8§ != 0)
            {
               if(!(_loc3_ && param1))
               {
                  this.§,!W§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,!W§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §+y§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(param2 == null)
         {
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         param2.x = _loc4_.x;
         param2.y = _loc4_.y;
         if(_loc6_ || this)
         {
            param2.width = 0;
            if(!_loc5_)
            {
               addr87:
               param2.height = 0;
            }
            return param2;
         }
         §§goto(addr87);
      }
      
      public function § l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
            if(!_loc2_)
            {
               this.§-!S§(null);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§<!N§ = param1;
         }
      }
      
      private function §-!S§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §;! §(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+!Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>7§)
         {
            _loc3_ = this.§%4§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               this.§,!s§[_loc2_ * 3] = _loc3_.x;
               if(_loc4_ || this)
               {
                  this.§,!s§[_loc2_ * 3 + 1] = _loc3_.y;
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
         }
         if(_loc4_)
         {
            param1.transformVectors(this.§,!s§,this.§'!Z§);
         }
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            this.§-!S§(param1.§7!0§);
            if(_loc6_)
            {
               if(this.§]!O§ == 0)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  addr48:
                  §§push(param2);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * this.alpha);
                     if(!(_loc7_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
               }
               §§push(§#L§);
               §§push(param2 == 1);
               if(!_loc7_)
               {
                  §§push(!§§pop());
               }
               §§push(§§pop().§9F§(§§pop(),this.§8w§.mipMapping,false,this.§'!L§,true));
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               var _loc4_:Context3D;
               if((_loc4_ = param1.context) == null)
               {
                  if(!(_loc7_ && param1))
                  {
                     return;
                  }
               }
               else
               {
                  var _loc5_:Vector.<Number> = !!this.§2!'§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                  if(param1.§>!a§ != this.§3+§)
                  {
                     if(_loc6_)
                     {
                        this.§>z§(0);
                        if(!_loc7_)
                        {
                           this.§3+§ = param1.§>!a§;
                           if(!_loc7_)
                           {
                              addr179:
                              if(!this.§!E§(_loc4_))
                              {
                                 this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,this.§]!O§ * 4);
                                 this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,this.§]!O§ * 4);
                                 if(_loc6_)
                                 {
                                    addr207:
                                    _loc4_.setBlendFactors(this.§;!J§,this.§@V§);
                                    _loc4_.setProgram(§7j§.§else§.§+!l§(_loc3_));
                                    if(!_loc7_)
                                    {
                                       _loc4_.setTextureAt(0,this.§8w§.getBase(_loc4_));
                                       _loc4_.setVertexBufferAt(0,this.§>b§,§9!§.§3!V§,Context3DVertexBufferFormat.FLOAT_3);
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr244);
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr298);
                              }
                           }
                           §§goto(addr207);
                        }
                     }
                     addr244:
                     _loc4_.setVertexBufferAt(1,this.§+[§,§9!§.§<!l§,Context3DVertexBufferFormat.FLOAT_2);
                     if(_loc6_ || param2)
                     {
                        _loc4_.setVertexBufferAt(2,this.§'9§,§9!§.§5Q§,Context3DVertexBufferFormat.FLOAT_4);
                        if(_loc6_ || this)
                        {
                           addr276:
                           _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§7!0§,true);
                           _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                           if(_loc6_ || param2)
                           {
                              _loc4_.drawTriangles(this.§7[§,0,this.§]!O§ * 2);
                              addr298:
                              if(!(_loc7_ && this))
                              {
                                 _loc4_.setVertexBufferAt(0,null);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr340);
                              }
                           }
                        }
                        _loc4_.setVertexBufferAt(1,null);
                        if(_loc6_)
                        {
                           addr336:
                           _loc4_.setVertexBufferAt(2,null);
                        }
                     }
                     addr340:
                     return;
                  }
                  §§goto(addr179);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr48);
      }
      
      public function get §`Q§() : Boolean
      {
         return false;
      }
      
      public function get §0!A§() : int
      {
         return this.§8<§.§9m§ / 4;
      }
      
      public function get §>!8§() : int
      {
         return this.§>7§;
      }
      
      public function get §>!j§() : Number
      {
         return this.§5!8§;
      }
      
      public function set §>!j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!8§ = param1;
         }
      }
      
      public function get §3!2§() : Number
      {
         return this.§<!t§;
      }
      
      public function set §3!2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!t§ = param1;
         }
      }
      
      public function get §=a§() : Number
      {
         return this.§+J§;
      }
      
      public function set §=a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+J§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§8w§;
      }
   }
}
