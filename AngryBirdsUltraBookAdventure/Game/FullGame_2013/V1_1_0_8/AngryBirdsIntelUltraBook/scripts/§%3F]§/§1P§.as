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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
         if(_loc5_ || param1)
         {
            super();
            while(true)
            {
               this.§3I§ = param1;
               addr129:
               while(true)
               {
                  this.§?!j§ = param3;
               }
               addr80:
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         while(true)
         {
            if(param2 != null)
            {
               this.§5!L§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(_loc5_ || this)
               {
                  §§goto(addr80);
               }
            }
            this.§5!L§(new Rectangle(0,0,1,1));
         }
         addr25:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§?!j§)
            {
               while(true)
               {
                  this.§3I§.dispose();
                  addr82:
                  while(true)
                  {
                  }
               }
               addr79:
            }
            loop2:
            while(true)
            {
               if(this.§3!v§)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        this.§3!v§.dispose();
                     }
                     addr72:
                  }
                  loop3:
                  while(true)
                  {
                     this.§3!v§ = null;
                     loop4:
                     while(true)
                     {
                        addr24:
                        while(true)
                        {
                           super.dispose();
                           if(_loc2_ || this)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                        if(_loc2_)
                        {
                           break loop2;
                        }
                        §§goto(addr79);
                     }
                  }
               }
               §§goto(addr24);
            }
            return;
         }
         §§goto(addr72);
      }
      
      private function §5!L§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && param1))
         {
            this.§]" § = param1;
            if(!_loc4_)
            {
               this.§1Y§ = param1.clone();
            }
         }
         var _loc2_:§1P§ = this.§3I§ as §1P§;
         loop0:
         while(_loc2_)
         {
            _loc3_ = _loc2_.§]" §;
            if(!_loc4_)
            {
               this.§1Y§.x = _loc3_.x + this.§1Y§.x * _loc3_.width;
               while(true)
               {
                  this.§1Y§.y = _loc3_.y + this.§1Y§.y * _loc3_.height;
                  loop2:
                  for(; !(_loc4_ && param1); while(true)
                  {
                     if(!(_loc4_ && param1))
                     {
                        this.§1Y§.height *= _loc3_.height;
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  },while(false)
                  {
                     §§goto(addr80);
                  },continue loop0)
                  {
                     while(true)
                     {
                        this.§1Y§.width *= _loc3_.width;
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr78);
            _loc2_ = _loc2_.§3I§ as §1P§;
         }
      }
      
      override public function adjustVertexData(param1:§'!w§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param1))
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§1Y§.x;
         var _loc5_:Number = this.§1Y§.y;
         var _loc6_:Number = this.§1Y§.width;
         var _loc7_:Number = this.§1Y§.height;
         §§push(param2);
         if(_loc10_ || this)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc10_ || this)
               {
                  if(_loc10_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc9_++;
                     addr133:
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
               }
               while(_loc11_ && this)
               {
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§'Q§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(!_loc11_)
               {
                  §§push(§'Q§.x * _loc6_);
                  if(!_loc11_)
                  {
                     addr125:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        §§push(§§pop() + §'Q§.y * _loc7_);
                     }
                  }
                  §§goto(addr133);
               }
               §§goto(addr125);
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
         var _loc4_:int = 0;
         if(_loc6_)
         {
            if(this.§3!v§)
            {
               if(!(_loc5_ && _loc3_))
               {
                  return this.§3!v§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc6_ || _loc1_)
         {
            if(_loc1_)
            {
               addr52:
               _loc2_ = this.clipping;
               if(_loc6_ || _loc2_)
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
                           while(true)
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              loop4:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr155:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           if(!(_loc5_ && this))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr105);
               }
            }
            §§goto(addr207);
         }
         §§goto(addr52);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§3I§.width);
         if(_loc1_ || _loc2_)
         {
            return §§pop() * this.§]" §.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3I§.height);
         if(!(_loc1_ && _loc1_))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§3I§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
