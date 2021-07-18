package
{
   import §=9§.§?!2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!_§ extends Texture
   {
      
      private static var §7g§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7g§ = new Point();
         }
      }
      
      private var §>!Z§:Texture;
      
      private var §3n§:Rectangle;
      
      private var §6q§:Rectangle;
      
      private var §;!#§:Boolean;
      
      private var §0H§:BitmapData;
      
      public function §[!_§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            do
            {
               this.§>!Z§ = param1;
               while(true)
               {
                  this.§;!#§ = param3;
                  do
                  {
                     if(param2 == null)
                     {
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        continue;
                     }
                     this.§&S§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                  }
                  while(_loc5_ || param1);
                  
                  continue loop0;
                  if(_loc5_ || param3)
                  {
                     this.§&S§(new Rectangle(0,0,1,1));
                     continue loop0;
                  }
               }
            }
            while(!_loc5_);
            
            §§goto(addr25);
         }
         addr25:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§;!#§)
            {
               loop0:
               while(true)
               {
                  this.§>!Z§.dispose();
                  addr92:
                  while(true)
                  {
                  }
                  loop5:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     this.§0H§ = null;
                     loop6:
                     while(true)
                     {
                        addr24:
                        while(true)
                        {
                           super.dispose();
                           if(!(_loc2_ || this))
                           {
                              continue loop6;
                           }
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc1_ && this)
                              {
                                 §§goto(addr92);
                              }
                              return;
                              addr60:
                           }
                           while(true)
                           {
                              this.§0H§.dispose();
                              continue loop5;
                           }
                           continue loop6;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§0H§)
               {
                  §§goto(addr70);
               }
               §§goto(addr24);
               §§goto(addr92);
            }
            §§goto(addr60);
         }
         §§goto(addr70);
      }
      
      private function §&S§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§3n§ = param1;
            if(_loc4_ || this)
            {
               addr36:
               this.§6q§ = param1.clone();
            }
            var _loc2_:§[!_§ = this.§>!Z§ as §[!_§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§>!Z§ as §[!_§)
            {
               _loc3_ = _loc2_.§3n§;
               if(_loc4_)
               {
                  this.§6q§.x = _loc3_.x + this.§6q§.x * _loc3_.width;
                  loop1:
                  while(true)
                  {
                     this.§6q§.y = _loc3_.y + this.§6q§.y * _loc3_.height;
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           this.§6q§.width *= _loc3_.width;
                           do
                           {
                              this.§6q§.height *= _loc3_.height;
                           }
                           while(_loc5_ && this);
                           
                           if(!(_loc4_ || this))
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              while(false)
                              {
                                 continue loop3;
                              }
                              continue loop0;
                              addr91:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr91);
            }
            return;
         }
         §§goto(addr36);
      }
      
      override public function adjustVertexData(param1:§?!2§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param3)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§6q§.x;
         var _loc5_:Number = this.§6q§.y;
         var _loc6_:Number = this.§6q§.width;
         var _loc7_:Number = this.§6q§.height;
         §§push(param2);
         if(!_loc10_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc11_)
               {
                  if(_loc11_ || param1)
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(_loc11_ || param1)
                  {
                     §§push(§7g§.x * _loc6_);
                     if(_loc11_ || param3)
                     {
                        addr126:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(!_loc10_)
                        {
                           addr129:
                           §§push(§§pop() + §7g§.y * _loc7_);
                        }
                        §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                        loop2:
                        while(true)
                        {
                           _loc9_++;
                           addr95:
                           while(_loc10_ && this)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr126);
                  addr152:
               }
               §§goto(addr95);
            }
            else
            {
               param1.getTexCoords(_loc9_,§7g§);
            }
            §§goto(addr152);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§>!Z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>!Z§.bitmapData;
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
            if(this.§0H§)
            {
               if(_loc6_)
               {
                  return this.§0H§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(!(_loc5_ && this))
         {
            if(_loc1_)
            {
               addr47:
               _loc2_ = this.clipping;
               if(!_loc5_)
               {
                  _loc2_.x *= this.bitmapData.width;
               }
               loop0:
               while(true)
               {
                  _loc2_.y *= this.bitmapData.height;
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
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr130:
                              while(_loc6_)
                              {
                                 continue loop4;
                              }
                              continue loop2;
                           }
                           addr71:
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           if(true)
                           {
                              §§goto(addr182);
                           }
                           §§goto(addr80);
                        }
                     }
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     this.§0H§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr99);
                  }
               }
            }
            addr182:
            return this.§0H§;
         }
         §§goto(addr47);
      }
      
      public function get §^T§() : Boolean
      {
         return this.§;!#§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§6q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§>!Z§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§>!Z§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>!Z§.width);
         if(!(_loc1_ && this))
         {
            return §§pop() * this.§3n§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>!Z§.height);
         if(!_loc2_)
         {
            return §§pop() * this.§3n§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§>!Z§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>!Z§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!Z§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
