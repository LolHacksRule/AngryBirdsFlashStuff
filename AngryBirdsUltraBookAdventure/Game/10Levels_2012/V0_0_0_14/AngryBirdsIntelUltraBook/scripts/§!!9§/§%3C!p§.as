package §!!9§
{
   import §2N§.§,!J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!p§ extends Texture
   {
      
      private static var § !d§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !d§ = new Point();
         }
      }
      
      private var §&`§:Texture;
      
      private var §^7§:Rectangle;
      
      private var §&!@§:Rectangle;
      
      private var §%?§:Boolean;
      
      private var §<![§:BitmapData;
      
      public function §<!p§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            do
            {
               this.§&`§ = param1;
               loop1:
               while(true)
               {
                  this.§%?§ = param3;
                  do
                  {
                     if(param2 == null)
                     {
                        continue;
                     }
                     this.§3!Q§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                     if(_loc5_)
                     {
                        if(!(_loc4_ && param3))
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  while(_loc4_);
                  
                  this.§3!Q§(new Rectangle(0,0,1,1));
                  continue loop0;
               }
            }
            while(!_loc5_);
            
            §§goto(addr20);
         }
         addr20:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§%?§)
            {
               if(!(_loc1_ && this))
               {
                  this.§&`§.dispose();
               }
               while(true)
               {
               }
               addr97:
            }
            loop1:
            while(true)
            {
               if(this.§<![§)
               {
                  while(true)
                  {
                     this.§<![§.dispose();
                     addr81:
                     while(!_loc1_)
                     {
                        this.§<![§ = null;
                        while(true)
                        {
                        }
                     }
                     continue loop1;
                     addr56:
                     if(!_loc2_)
                     {
                        continue;
                     }
                     return;
                     addr68:
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr56);
                  }
                  §§goto(addr81);
               }
               §§goto(addr68);
            }
         }
         §§goto(addr73);
      }
      
      private function §3!Q§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            this.§^7§ = param1;
            if(!(_loc5_ && _loc3_))
            {
               addr31:
               this.§&!@§ = param1.clone();
            }
            var _loc2_:§<!p§ = this.§&`§ as §<!p§;
            while(_loc2_)
            {
               _loc3_ = _loc2_.§^7§;
               if(!_loc5_)
               {
                  this.§&!@§.x = _loc3_.x + this.§&!@§.x * _loc3_.width;
                  while(true)
                  {
                     this.§&!@§.y = _loc3_.y + this.§&!@§.y * _loc3_.height;
                     addr112:
                     loop2:
                     while(true)
                     {
                        addr78:
                        while(true)
                        {
                           this.§&!@§.width *= _loc3_.width;
                           continue loop2;
                        }
                     }
                  }
                  addr125:
               }
               while(true)
               {
                  this.§&!@§.height *= _loc3_.height;
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr112);
               }
               _loc2_ = _loc2_.§&`§ as §<!p§;
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function adjustVertexData(param1:§,!J§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || this)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§&!@§.x;
         var _loc5_:Number = this.§&!@§.y;
         var _loc6_:Number = this.§&!@§.width;
         var _loc7_:Number = this.§&!@§.height;
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
               if(!_loc10_)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc9_++;
                     addr124:
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
               }
               while(_loc10_ && param2)
               {
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§ !d§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(!_loc10_)
               {
                  §§push(§ !d§.x * _loc6_);
                  if(!_loc10_)
                  {
                     addr116:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!_loc10_)
                     {
                        addr119:
                        §§push(§§pop() + § !d§.y * _loc7_);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr119);
               }
               §§goto(addr116);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&`§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&`§.bitmapData;
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
            if(this.§<![§)
            {
               if(_loc5_ || _loc1_)
               {
                  return this.§<![§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc5_ || _loc3_)
         {
            if(_loc1_)
            {
               addr56:
               _loc2_ = this.clipping;
               if(_loc5_)
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
                        continue loop1;
                        addr117:
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        this.§<![§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                        if(_loc5_ || this)
                        {
                           addr83:
                           if(!(_loc6_ && _loc2_))
                           {
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       return this.§<![§;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       this.§<![§ = new BitmapData(_loc3_,_loc4_,true,0);
                                       addr115:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr117);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(int(Math.max(2,_loc2_.height)));
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   continue loop7;
                                                   §§goto(addr83);
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                §§goto(addr144);
                                             }
                                             addr144:
                                             addr143:
                                          }
                                          §§goto(addr135);
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                    addr201:
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr115);
                     }
                  }
               }
            }
            §§goto(addr201);
         }
         §§goto(addr56);
      }
      
      public function get §'+§() : Boolean
      {
         return this.§%?§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§&!@§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&`§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§&`§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§&`§.width);
         if(_loc1_ || this)
         {
            return §§pop() * this.§^7§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&`§.height);
         if(!_loc1_)
         {
            return §§pop() * this.§^7§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&`§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&`§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§&`§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
