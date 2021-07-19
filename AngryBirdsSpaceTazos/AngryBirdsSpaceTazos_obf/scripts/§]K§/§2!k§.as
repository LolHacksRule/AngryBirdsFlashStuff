package §]K§
{
   import §&!Z§.§6!r§;
   import §5Q§.§%!t§;
   import §5Q§.§,Q§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §=5§.§""C§;
   import §>!7§.§`B§;
   import §`!#§.Texture;
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
   
   public class §2!k§ extends DisplayObject implements §`B§
   {
       
      
      private var §2-§:Texture;
      
      private var §3R§:Vector.<§;!`§>;
      
      private var §6N§:Number;
      
      private var §"3§:Vector.<Number>;
      
      private var §>!M§:Vector.<Number>;
      
      private var §'!O§:§6!r§;
      
      private var §6"=§:VertexBuffer3D;
      
      private var § !"§:VertexBuffer3D;
      
      private var §7!3§:VertexBuffer3D;
      
      private var §+B§:Vector.<uint>;
      
      private var §=!f§:IndexBuffer3D;
      
      private var §`"F§:int;
      
      private var §4§:int;
      
      private var §?!H§:Number;
      
      protected var § !f§:Number;
      
      private var §"8§:Number = 0.0;
      
      private var §&!J§:Number;
      
      protected var §%"D§:Number;
      
      protected var §9!J§:Number;
      
      protected var §<!l§:Boolean;
      
      protected var §&!d§:String;
      
      protected var §'!c§:String;
      
      protected var §'"5§:String;
      
      private var §+!0§:int = -1;
      
      private var §[P§:Boolean = false;
      
      private var §[R§:Number = 0.0;
      
      public function §2!k§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc8_)
                  {
                     throw new ArgumentError("texture must not be null");
                  }
                  break;
               }
               this.§2-§ = param1;
               if(_loc8_ || param3)
               {
                  this.§<!l§ = param1.premultipliedAlpha;
                  if(!_loc7_)
                  {
                     this.§3R§ = new Vector.<§;!`§>(0,false);
                     loop1:
                     while(true)
                     {
                        this.§"3§ = new Vector.<Number>();
                        if(_loc7_)
                        {
                           break;
                        }
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        this.§>!M§ = new Vector.<Number>();
                        loop2:
                        while(true)
                        {
                           this.§'!O§ = new §6!r§(0,this.§<!l§);
                           if(!(_loc8_ || param1))
                           {
                              break;
                           }
                           this.§+B§ = new Vector.<uint>(0);
                           while(true)
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 this.§?!H§ = param2;
                                 if(_loc7_)
                                 {
                                    break loop1;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        loop8:
                        while(true)
                        {
                           §§push(this);
                           if(_loc8_ || param1)
                           {
                              §§push(param4);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             if(this.§<!l§)
                                             {
                                                addr238:
                                                §§push(Context3DBlendFactor.ONE);
                                                if(_loc8_ || this)
                                                {
                                                   addr248:
                                                }
                                             }
                                             else
                                             {
                                                §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr248);
                                    }
                                 }
                                 addr252:
                                 §§pop().§&!d§ = §§pop();
                                 while(_loc7_ && param2)
                                 {
                                    continue loop8;
                                    §§goto(addr252);
                                 }
                                 while(true)
                                 {
                                    if(param3 > 0)
                                    {
                                       addr195:
                                       if(!(_loc7_ && param2))
                                       {
                                          break loop1;
                                       }
                                       while(true)
                                       {
                                          if(_loc8_ || param3)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr253);
                                       }
                                       addr205:
                                    }
                                    §§goto(addr187);
                                 }
                                 addr253:
                                 addr260:
                              }
                              §§goto(addr248);
                           }
                           §§goto(addr238);
                        }
                     }
                     while(true)
                     {
                        this.§,!1§(param3);
                        §§goto(addr205);
                        §§goto(addr195);
                     }
                  }
                  §§goto(addr260);
               }
               break;
            }
            addr187:
            return;
         }
         §§goto(addr252);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§6"=§)
            {
               while(true)
               {
                  this.§6"=§.dispose();
                  addr143:
                  while(true)
                  {
                  }
                  addr59:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  super.dispose();
                  addr76:
                  if(_loc2_ || _loc2_)
                  {
                     addr34:
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc1_)
                        {
                           loop3:
                           while(true)
                           {
                              addr97:
                              while(true)
                              {
                                 if(this.§7!3§)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             this.§7!3§.dispose();
                                             loop6:
                                             while(true)
                                             {
                                                addr82:
                                                while(true)
                                                {
                                                   if(!this.§=!f§)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§"3§ = null;
                                                         addr81:
                                                         while(true)
                                                         {
                                                            this.§>!M§ = null;
                                                            addr48:
                                                            while(_loc2_)
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr59);
                                                               }
                                                               §§goto(addr76);
                                                            }
                                                            continue loop6;
                                                            §§goto(addr34);
                                                         }
                                                      }
                                                      addr77:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§=!f§.dispose();
                                                      continue loop6;
                                                      §§goto(addr50);
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr143);
                                          }
                                       }
                                       addr123:
                                       while(true)
                                       {
                                          this.§ !"§.dispose();
                                          break loop5;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr82);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr48);
               }
            }
            while(true)
            {
               if(this.§ !"§)
               {
                  §§goto(addr123);
               }
               §§goto(addr97);
               §§goto(addr143);
            }
         }
         §§goto(addr143);
      }
      
      protected function createParticle() : §;!`§
      {
         return new §;!`§();
      }
      
      protected function initParticle(param1:§;!`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.x = this.§%"D§;
            loop0:
            while(true)
            {
               param1.y = this.§9!J§;
               loop1:
               while(true)
               {
                  param1.§+V§ = 0;
                  while(true)
                  {
                     param1.§#F§ = 1;
                     continue loop0;
                     addr74:
                     if(_loc2_ || _loc3_)
                     {
                        param1.blue = Math.random();
                        loop6:
                        for(; !(_loc3_ && _loc2_); while(true)
                        {
                           param1.alpha = 0;
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop6;
                        },return)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr87:
                           while(true)
                           {
                              param1.green = Math.random();
                              break loop6;
                           }
                        }
                        while(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr74);
                           §§goto(addr42);
                        }
                        addr42:
                        continue loop0;
                        addr67:
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function advanceParticle(param1:§;!`§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_)
            {
               §§push(param2);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         while(true)
         {
            §§push(param1);
            §§push(1);
            §§push(param1.§+V§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() / param1.§#F§);
            }
            §§pop().alpha = §§pop() - §§pop();
            loop1:
            while(!(_loc3_ && _loc3_))
            {
               param1.scaleX = 1 - param1.alpha;
               loop2:
               do
               {
                  param1.scaleY = 1 - param1.alpha;
                  while(!_loc3_)
                  {
                     §§push(param1);
                     §§push(param1.§+V§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§+V§ = §§pop();
                     if(_loc4_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc3_);
               
               return;
            }
         }
      }
      
      private function §,!1§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§!l§);
         if(_loc8_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§!l§);
         if(!_loc9_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§6!r§;
         (_loc4_ = new §6!r§(4)).setTexCoords(0,0,0);
         if(!_loc9_)
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
               addr102:
               while(_loc8_)
               {
                  this.§2-§.adjustVertexData(_loc4_,0,4);
                  continue loop0;
               }
            }
         }
      }
      
      private function §[!^§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§[P§);
            if(!(_loc3_ && _loc3_))
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
                  if(!_loc3_)
                  {
                     §§goto(addr40);
                  }
               }
               §§push(this.§'!O§.§[">§);
               if(_loc4_ || param1)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  if(this.§6"=§)
                  {
                     while(true)
                     {
                        this.§6"=§.dispose();
                        addr280:
                        while(true)
                        {
                        }
                     }
                     addr277:
                  }
                  loop1:
                  while(true)
                  {
                     if(this.§ !"§)
                     {
                        loop2:
                        while(true)
                        {
                           this.§ !"§.dispose();
                           while(true)
                           {
                              loop12:
                              while(_loc4_ || this)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.§ !"§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§5m§);
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop12;
                                       }
                                       this.§ !"§.uploadFromVector(this.§'!O§.§2!l§,0,_loc2_ * 4);
                                       loop14:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop13;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          this.§7!3§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§%d§);
                                          loop15:
                                          while(!_loc3_)
                                          {
                                             this.§7!3§.uploadFromVector(this.§'!O§.§7'§,0,_loc2_ * 4);
                                             do
                                             {
                                                this.§=!f§ = param1.createIndexBuffer(_loc2_ * 6);
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      continue loop14;
                                                   }
                                                   continue loop15;
                                                   addr140:
                                                   this.§=!f§.uploadFromVector(this.§+B§,0,_loc2_ * 6);
                                                   if(!_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr82);
                                                }
                                                while(true)
                                                {
                                                   addr238:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(this.§=!f§)
                                                      {
                                                         break loop13;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         this.§6"=§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§""A§);
                                                         break loop15;
                                                         addr247:
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                            addr114:
                                                            if(_loc3_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr123:
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§goto(addr140);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§7!3§.dispose();
                                                                  continue loop7;
                                                                  §§goto(addr123);
                                                               }
                                                               addr252:
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop15;
                                             }
                                             while(_loc3_ && this);
                                             
                                             return true;
                                          }
                                          while(true)
                                          {
                                             this.§6"=§.uploadFromByteArray(this.§'!O§.§3"8§,0,0,_loc2_ * 4);
                                             continue loop12;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§=!f§.dispose();
                                          §§goto(addr247);
                                       }
                                       else
                                       {
                                          §§goto(addr277);
                                       }
                                    }
                                    continue loop1;
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(this.§7!3§)
                        {
                           §§goto(addr252);
                        }
                        §§goto(addr238);
                     }
                  }
               }
               §§goto(addr280);
            }
            addr32:
            return false;
         }
         addr40:
         throw new §""C§();
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§?!H§ != 0)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§&!J§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&!J§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §]!U§(param1);
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
                     while(_loc5_ || _loc3_)
                     {
                        if(_loc5_ || param1)
                        {
                           param2.width = 0;
                           for(; !(_loc6_ && param1); param2.height = 0,if(_loc5_ || _loc3_)
                           {
                              return param2;
                           })
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 continue;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr124);
      }
      
      public function §;";§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.advanceTime(param1);
            do
            {
               this.§0!!§(null);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[R§ = param1;
         }
      }
      
      private function §0!!§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §"!$§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!`§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`"F§)
         {
            _loc3_ = this.§3R§[_loc2_];
            if(_loc4_ || param1)
            {
               this.§"3§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     this.§"3§[_loc2_ * 3 + 1] = _loc3_.y;
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           _loc2_++;
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr53);
            }
         }
         if(!_loc5_)
         {
            param1.transformVectors(this.§"3§,this.§>!M§);
         }
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            this.§0!!§(param1.§^s§);
            while(true)
            {
               §§goto(addr52);
            }
         }
         while(false)
         {
            addr52:
            while(true)
            {
               if(this.§4§ == 0)
               {
                  if(_loc7_ || param2)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr65:
               }
               while(true)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * this.alpha);
                     if(_loc7_ || _loc3_)
                     {
                        addr39:
                        §§push(Number(§§pop()));
                     }
                     param2 = §§pop();
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr39);
               }
               continue loop0;
            }
            return;
         }
         §§push(§,Q§);
         §§push(param2 == 1);
         if(!_loc6_)
         {
            §§push(!§§pop());
         }
         §§push(§§pop().§8i§(§§pop(),this.§2-§.mipMapping,false,this.§'"5§,true));
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:Context3D;
         if((_loc4_ = param1.§"!G§) == null)
         {
            if(_loc7_)
            {
               return;
            }
         }
         var _loc5_:Vector.<Number> = !!this.§<!l§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         if(_loc7_)
         {
            if(param1.§;!c§ != this.§+!0§)
            {
               while(true)
               {
                  this.§,!1§(0);
                  while(true)
                  {
                     this.§+!0§ = param1.§;!c§;
                     addr386:
                     while(true)
                     {
                        addr296:
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        _loc4_.setVertexBufferAt(2,this.§ !"§,§6!r§.§%§,Context3DVertexBufferFormat.FLOAT_4);
                        loop18:
                        while(true)
                        {
                           if(!(_loc6_ && this))
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^s§,true);
                              continue;
                           }
                           addr314:
                           while(true)
                           {
                              _loc4_.setVertexBufferAt(1,this.§6"=§,§6!r§.§8!d§,Context3DVertexBufferFormat.FLOAT_2);
                              addr294:
                              loop17:
                              while(_loc7_)
                              {
                                 §§goto(addr296);
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                 loop20:
                                 while(true)
                                 {
                                    _loc4_.drawTriangles(this.§=!f§,0,this.§4§ * 2);
                                    addr223:
                                    addr369:
                                    loop21:
                                    while(!(_loc6_ && this))
                                    {
                                       _loc4_.setVertexBufferAt(0,null);
                                       do
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop20;
                                          }
                                          continue loop21;
                                       }
                                       while(!(_loc7_ || this));
                                       
                                       return;
                                    }
                                    while(true)
                                    {
                                       this.§ !"§.uploadFromVector(this.§'!O§.§2!l§,0,this.§4§ * 4);
                                       break loop17;
                                       §§goto(addr223);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§7!3§.uploadFromVector(this.§'!O§.§7'§,0,this.§4§ * 4);
                                 addr363:
                                 loop11:
                                 while(true)
                                 {
                                    addr343:
                                    while(true)
                                    {
                                       _loc4_.setBlendFactors(this.§&!d§,this.§'!c§);
                                       while(true)
                                       {
                                          _loc4_.setProgram(§^!e§.§`?§.§ §(_loc3_));
                                          addr335:
                                          while(_loc7_ || param2)
                                          {
                                             _loc4_.setTextureAt(0,this.§2-§.getBase(_loc4_));
                                             break loop18;
                                          }
                                       }
                                       continue loop11;
                                    }
                                 }
                              }
                              continue loop18;
                           }
                        }
                        while(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              _loc4_.setVertexBufferAt(0,this.§7!3§,§6!r§.§^A§,Context3DVertexBufferFormat.FLOAT_3);
                              §§goto(addr314);
                           }
                           §§goto(addr363);
                        }
                        §§goto(addr335);
                     }
                  }
               }
            }
            while(true)
            {
               if(!this.§[!^§(_loc4_))
               {
                  §§goto(addr369);
               }
               §§goto(addr343);
               §§goto(addr386);
            }
         }
         §§goto(addr175);
      }
      
      public function get §6!^§() : Boolean
      {
         return false;
      }
      
      public function get §!l§() : int
      {
         return this.§'!O§.§[">§ / 4;
      }
      
      public function get §?!D§() : int
      {
         return this.§`"F§;
      }
      
      public function get §^""§() : Number
      {
         return this.§?!H§;
      }
      
      public function set §^""§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?!H§ = param1;
         }
      }
      
      public function get §8!;§() : Number
      {
         return this.§%"D§;
      }
      
      public function set §8!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%"D§ = param1;
         }
      }
      
      public function get §"!%§() : Number
      {
         return this.§9!J§;
      }
      
      public function set §"!%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§9!J§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§2-§;
      }
   }
}
