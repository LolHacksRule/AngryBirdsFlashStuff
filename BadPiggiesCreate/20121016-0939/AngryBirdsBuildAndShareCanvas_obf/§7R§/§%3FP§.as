package §7R§
{
   import §3W§.§>!-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?P§ extends Texture
   {
      
      private static var §;m§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §;m§ = new Point();
         }
      }
      
      private var §,#§:Texture;
      
      private var §=" §:Rectangle;
      
      private var §%Q§:Rectangle;
      
      private var §+&§:Boolean;
      
      private var §%&§:BitmapData;
      
      public function §?P§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§,#§ = param1;
            do
            {
               this.§+&§ = param3;
               do
               {
                  if(param2 == null)
                  {
                     continue loop0;
                  }
                  this.§2"6§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                  if(_loc5_)
                  {
                     if(_loc5_ || param1)
                     {
                        §§goto(addr20);
                     }
                     continue loop0;
                  }
               }
               while(!_loc5_);
               
            }
            while(!(_loc5_ || param1));
            
            addr20:
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+&§)
            {
               if(!(_loc2_ && this))
               {
                  this.§,#§.dispose();
               }
               while(true)
               {
                  addr40:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
               addr101:
            }
            while(true)
            {
               if(this.§%&§)
               {
                  while(true)
                  {
                     this.§%&§.dispose();
                     while(true)
                     {
                        this.§%&§ = null;
                        addr62:
                        loop4:
                        while(!(_loc2_ && _loc1_))
                        {
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr33:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr40);
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr33);
                  }
                  §§goto(addr62);
               }
               §§goto(addr40);
               §§goto(addr101);
            }
            §§goto(addr57);
         }
         §§goto(addr69);
      }
      
      private function §2"6§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && param1))
         {
            this.§=" § = param1;
            if(_loc5_ || _loc2_)
            {
               addr37:
               this.§%Q§ = param1.clone();
            }
            var _loc2_:§?P§ = this.§,#§ as §?P§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§,#§ as §?P§)
            {
               _loc3_ = _loc2_.§=" §;
               if(_loc5_ || _loc3_)
               {
                  this.§%Q§.x = _loc3_.x + this.§%Q§.x * _loc3_.width;
                  while(true)
                  {
                     this.§%Q§.y = _loc3_.y + this.§%Q§.y * _loc3_.height;
                     loop4:
                     while(!(_loc4_ && this))
                     {
                        this.§%Q§.height *= _loc3_.height;
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc5_)
                           {
                              if(true)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr123:
                           }
                           while(true)
                           {
                              this.§%Q§.width *= _loc3_.width;
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr123);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function adjustVertexData(param1:§>!-§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§%Q§.x;
         var _loc5_:Number = this.§%Q§.y;
         var _loc6_:Number = this.§%Q§.width;
         var _loc7_:Number = this.§%Q§.height;
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc11_ || param3)
               {
                  if(!(_loc10_ && this))
                  {
                     break;
                  }
                  while(_loc10_ && param3)
                  {
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
                  _loc9_++;
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§;m§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc11_ || this)
               {
                  §§push(§;m§.x * _loc6_);
                  if(!(_loc10_ && param1))
                  {
                     addr114:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(_loc11_ || param3)
                     {
                        addr122:
                        §§push(§§pop() + §;m§.y * _loc7_);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr122);
               }
               §§goto(addr114);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§,#§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,#§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§%&§)
            {
               if(!(_loc6_ && _loc3_))
               {
                  return this.§%&§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(!(_loc6_ && _loc1_))
         {
            if(_loc1_)
            {
               addr56:
               _loc2_ = this.clipping;
               if(!_loc6_)
               {
                  _loc2_.x *= this.bitmapData.width;
               }
               loop0:
               while(true)
               {
                  _loc2_.y *= this.bitmapData.height;
                  loop1:
                  while(true)
                  {
                     _loc2_.width *= this.bitmapData.width;
                     loop2:
                     while(true)
                     {
                        _loc2_.height *= this.bitmapData.height;
                        while(true)
                        {
                           §§push(int(Math.max(2,_loc2_.width)));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              §§push(int(Math.max(2,_loc2_.height)));
                              addr151:
                              continue loop2;
                              if(_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 while(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                                 addr126:
                              }
                           }
                           addr101:
                           while(_loc5_ || _loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr201);
         }
         §§goto(addr56);
      }
      
      public function get §+"!§() : Boolean
      {
         return this.§+&§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%Q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§,#§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§,#§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,#§.width);
         if(!_loc2_)
         {
            return §§pop() * this.§=" §.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,#§.height);
         if(_loc1_)
         {
            return §§pop() * this.§=" §.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,#§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,#§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,#§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
