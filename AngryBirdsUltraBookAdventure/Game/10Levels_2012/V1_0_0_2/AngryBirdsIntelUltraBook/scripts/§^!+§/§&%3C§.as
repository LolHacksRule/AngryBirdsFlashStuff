package §^!+§
{
   import §`s§.§0p§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&<§ extends Texture
   {
      
      private static var §<!^§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!^§ = new Point();
         }
      }
      
      private var §3^§:Texture;
      
      private var §%!k§:Rectangle;
      
      private var §=!w§:Rectangle;
      
      private var §1!K§:Boolean;
      
      private var §&!d§:BitmapData;
      
      public function §&<§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            do
            {
               this.§3^§ = param1;
               loop1:
               while(true)
               {
                  this.§1!K§ = param3;
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     if(param2 != null)
                     {
                        this.§3!Z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr20);
                        }
                     }
                  }
                  continue loop0;
               }
            }
            while(!_loc5_);
            
            addr20:
            return;
         }
         while(true)
         {
            this.§3!Z§(new Rectangle(0,0,1,1));
            §§goto(addr98);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§1!K§)
            {
               while(true)
               {
                  this.§3^§.dispose();
                  addr87:
                  while(true)
                  {
                  }
               }
               addr84:
            }
            while(true)
            {
               if(!this.§&!d§)
               {
                  while(true)
                  {
                     super.dispose();
                     if(_loc2_ || _loc1_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr66);
                     §§goto(addr66);
                  }
                  return;
               }
               loop3:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§&!d§.dispose();
                     addr78:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           this.§&!d§ = null;
                           while(!_loc2_)
                           {
                              continue loop3;
                           }
                           addr66:
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                     }
                  }
               }
               §§goto(addr87);
            }
         }
         §§goto(addr75);
      }
      
      private function §3!Z§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            this.§%!k§ = param1;
            if(!(_loc4_ && this))
            {
               addr32:
               this.§=!w§ = param1.clone();
            }
            var _loc2_:§&<§ = this.§3^§ as §&<§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§3^§ as §&<§)
            {
               _loc3_ = _loc2_.§%!k§;
               if(_loc5_)
               {
                  this.§=!w§.x = _loc3_.x + this.§=!w§.x * _loc3_.width;
                  loop1:
                  while(true)
                  {
                     this.§=!w§.y = _loc3_.y + this.§=!w§.y * _loc3_.height;
                     while(true)
                     {
                        addr82:
                        addr73:
                        while(true)
                        {
                           this.§=!w§.width *= _loc3_.width;
                           addr92:
                           while(_loc5_)
                           {
                           }
                           continue loop1;
                        }
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr82);
                     }
                  }
               }
               while(true)
               {
                  this.§=!w§.height *= _loc3_.height;
                  if(!_loc4_)
                  {
                     §§goto(addr73);
                  }
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function adjustVertexData(param1:§0p§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param1)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§=!w§.x;
         var _loc5_:Number = this.§=!w§.y;
         var _loc6_:Number = this.§=!w§.width;
         var _loc7_:Number = this.§=!w§.height;
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc11_ || param2)
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
               while(_loc10_)
               {
                  while(!_loc11_)
                  {
                  }
                  _loc9_++;
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§<!^§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc11_)
               {
                  §§push(§<!^§.x * _loc6_);
                  if(_loc11_)
                  {
                     addr114:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        §§push(§§pop() + §<!^§.y * _loc7_);
                     }
                  }
                  §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  §§goto(addr123);
               }
               §§goto(addr114);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3^§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3^§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && _loc1_))
         {
            if(this.§&!d§)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr41);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(_loc6_)
            {
               if(_loc1_)
               {
                  addr52:
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
                           loop2:
                           for(; !_loc5_; while(!(_loc5_ && _loc2_))
                           {
                           })
                           {
                              _loc2_.height *= this.bitmapData.height;
                              loop3:
                              while(true)
                              {
                                 §§push(int(Math.max(2,_loc2_.width)));
                                 loop4:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop2;
                                    addr155:
                                    while(true)
                                    {
                                       §§push(int(Math.max(2,_loc2_.height)));
                                       if(_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          while(_loc6_)
                                          {
                                             continue loop3;
                                             loop9:
                                             while(_loc6_ || this)
                                             {
                                                continue loop1;
                                                this.§&!d§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr84:
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&!d§ = new BitmapData(_loc3_,_loc4_,true,0);
                                                         continue loop9;
                                                         §§goto(addr84);
                                                      }
                                                      addr86:
                                                   }
                                                   §§goto(addr207);
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr155);
               }
               addr207:
               return this.§&!d§;
            }
            §§goto(addr52);
         }
         addr41:
         return this.§&!d§;
      }
      
      public function get §9#§() : Boolean
      {
         return this.§1!K§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=!w§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3^§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3^§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3^§.width);
         if(_loc2_ || _loc1_)
         {
            return §§pop() * this.§%!k§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3^§.height);
         if(_loc2_ || this)
         {
            return §§pop() * this.§%!k§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3^§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3^§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3^§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
