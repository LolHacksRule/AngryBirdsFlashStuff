package §?]§
{
   import §7H§.§'!w§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1P§ extends Texture
   {
      
      private static var §'Q§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'Q§ = new Point();
         }
      }
      
      private var §3I§:Texture;
      
      private var §]" §:Rectangle;
      
      private var §1Y§:Rectangle;
      
      private var §?!j§:Boolean;
      
      private var §3!v§:BitmapData;
      
      public function §1P§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§3I§ = param1;
            loop1:
            do
            {
               this.§?!j§ = param3;
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(param2 == null)
                     {
                        break;
                     }
                     this.§5!L§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                     if(!(_loc4_ && param1))
                     {
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               this.§5!L§(new Rectangle(0,0,1,1));
            }
            while(!_loc5_);
            
            §§goto(addr25);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§?!j§)
            {
               while(true)
               {
                  this.§3I§.dispose();
                  addr87:
                  while(true)
                  {
                  }
               }
               addr84:
            }
            loop2:
            while(true)
            {
               if(this.§3!v§)
               {
                  if(_loc2_ || _loc1_)
                  {
                     this.§3!v§.dispose();
                     addr80:
                     loop4:
                     while(true)
                     {
                        this.§3!v§ = null;
                        loop5:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 super.dispose();
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              addr39:
                           }
                           §§goto(addr84);
                        }
                     }
                     addr80:
                  }
                  §§goto(addr80);
               }
               §§goto(addr39);
            }
            return;
         }
         §§goto(addr80);
      }
      
      private function §5!L§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            this.§]" § = param1;
            if(_loc5_)
            {
               addr27:
               this.§1Y§ = param1.clone();
            }
            var _loc2_:§1P§ = this.§3I§ as §1P§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§3I§ as §1P§)
            {
               _loc3_ = _loc2_.§]" §;
               if(!_loc4_)
               {
                  this.§1Y§.x = _loc3_.x + this.§1Y§.x * _loc3_.width;
                  while(true)
                  {
                     this.§1Y§.y = _loc3_.y + this.§1Y§.y * _loc3_.height;
                     addr113:
                     loop2:
                     while(true)
                     {
                        addr79:
                        while(true)
                        {
                           this.§1Y§.width *= _loc3_.width;
                           continue loop2;
                        }
                     }
                     addr70:
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr79);
                  }
               }
               while(true)
               {
                  this.§1Y§.height *= _loc3_.height;
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr113);
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function adjustVertexData(param1:§'!w§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && param1))
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§1Y§.x;
         var _loc5_:Number = this.§1Y§.y;
         var _loc6_:Number = this.§1Y§.width;
         var _loc7_:Number = this.§1Y§.height;
         §§push(param2);
         if(!(_loc10_ && param1))
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!_loc10_)
               {
                  break;
               }
               while(_loc10_ && param2)
               {
                  while(_loc10_)
                  {
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
                  _loc9_++;
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§'Q§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc11_ || param2)
               {
                  §§push(§'Q§.x * _loc6_);
                  if(_loc11_ || param1)
                  {
                     addr129:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() + §'Q§.y * _loc7_);
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr129);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3I§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3I§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            if(this.§3!v§)
            {
               if(!_loc5_)
               {
                  §§goto(addr31);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!(_loc5_ && _loc1_))
            {
               if(_loc1_)
               {
                  addr47:
                  _loc2_ = this.clipping;
                  if(_loc6_ || _loc1_)
                  {
                     _loc2_.x *= this.bitmapData.width;
                     loop0:
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        loop1:
                        while(true)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           while(true)
                           {
                              _loc2_.height *= this.bitmapData.height;
                              loop3:
                              for(; !(_loc5_ && _loc3_); while(!(_loc5_ && _loc2_))
                              {
                                 §§goto(addr155);
                              })
                              {
                                 §§push(int(Math.max(2,_loc2_.width)));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    §§push(int(Math.max(2,_loc2_.height)));
                                    addr155:
                                    continue loop3;
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       _loc4_ = §§pop();
                                       loop6:
                                       for(; _loc6_ || _loc2_; while(_loc6_ || this)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       })
                                       {
                                          while(true)
                                          {
                                             this.§3!v§ = new BitmapData(_loc3_,_loc4_,true,0);
                                             continue loop6;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§3!v§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr90);
                        }
                        addr212:
                        return this.§3!v§;
                        addr116:
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr212);
            }
            §§goto(addr47);
         }
         addr31:
         return this.§3!v§;
      }
      
      public function get §'v§() : Boolean
      {
         return this.§?!j§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§1Y§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3I§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3I§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3I§.width);
         if(_loc2_ || this)
         {
            return §§pop() * this.§]" §.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§3I§.height);
         if(_loc1_ || this)
         {
            return §§pop() * this.§]" §.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3I§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3I§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3I§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
