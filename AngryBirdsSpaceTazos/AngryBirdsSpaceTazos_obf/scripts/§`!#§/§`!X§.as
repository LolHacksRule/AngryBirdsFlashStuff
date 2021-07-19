package §`!#§
{
   import §&!Z§.§6!r§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!X§ extends Texture
   {
      
      private static var §+!d§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §+!d§ = new Point();
         }
      }
      
      private var §]!&§:Texture;
      
      private var §,!d§:Rectangle;
      
      private var § T§:Rectangle;
      
      private var §,!I§:Boolean;
      
      private var §<o§:BitmapData;
      
      public function §`!X§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§]!&§ = param1;
               addr87:
               addr72:
               while(true)
               {
                  if(!(_loc4_ && param2))
                  {
                     if(param2 == null)
                     {
                        break;
                     }
                     this.§`!q§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                     if(_loc4_)
                     {
                        return;
                     }
                     addr20:
                     addr82:
                     continue;
                  }
                  continue loop0;
               }
               if(_loc4_)
               {
                  while(true)
                  {
                     this.§,!I§ = param3;
                     §§goto(addr87);
                     §§goto(addr72);
                  }
                  addr109:
               }
               this.§`!q§(new Rectangle(0,0,1,1));
               §§goto(addr82);
            }
         }
         §§goto(addr109);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§,!I§)
            {
               while(true)
               {
                  this.§]!&§.dispose();
                  addr97:
                  while(true)
                  {
                  }
                  addr53:
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
            while(true)
            {
               if(this.§<o§)
               {
                  loop3:
                  while(true)
                  {
                     this.§<o§.dispose();
                     addr90:
                     while(true)
                     {
                        this.§<o§ = null;
                        continue loop3;
                     }
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(!(_loc1_ && this))
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr65);
                  §§goto(addr65);
               }
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr53);
            }
            §§goto(addr60);
         }
         §§goto(addr90);
      }
      
      private function §`!q§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§,!d§ = param1;
            if(!_loc5_)
            {
               addr31:
               this.§ T§ = param1.clone();
            }
            var _loc2_:§`!X§ = this.§]!&§ as §`!X§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§]!&§ as §`!X§)
            {
               _loc3_ = _loc2_.§,!d§;
               if(_loc4_)
               {
                  this.§ T§.x = _loc3_.x + this.§ T§.x * _loc3_.width;
                  while(true)
                  {
                     this.§ T§.y = _loc3_.y + this.§ T§.y * _loc3_.height;
                     loop2:
                     while(true)
                     {
                        addr79:
                        while(true)
                        {
                           this.§ T§.width *= _loc3_.width;
                           continue loop2;
                        }
                     }
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§ T§.height *= _loc3_.height;
                        if(_loc4_ || _loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr89);
                     }
                     continue loop0;
                     addr103:
                  }
               }
               §§goto(addr103);
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function adjustVertexData(param1:§6!r§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§ T§.x;
         var _loc5_:Number = this.§ T§.y;
         var _loc6_:Number = this.§ T§.width;
         var _loc7_:Number = this.§ T§.height;
         §§push(param2);
         if(!_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc10_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!(_loc11_ && param2))
               {
                  if(!_loc11_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc9_++;
                     addr138:
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
               }
               while(!(_loc10_ || param3))
               {
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§+!d§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc10_)
               {
                  §§push(§+!d§.x * _loc6_);
                  if(_loc10_ || this)
                  {
                     addr115:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!(_loc11_ && param3))
                     {
                        addr123:
                        §§push(§§pop() + §+!d§.y * _loc7_);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr123);
               }
               §§goto(addr115);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§]!&§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]!&§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            if(this.§<o§)
            {
               if(_loc5_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!_loc6_)
            {
               if(_loc1_)
               {
                  addr41:
                  _loc2_ = this.clipping;
                  if(_loc5_ || this)
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
                              addr161:
                              while(true)
                              {
                                 §§push(int(Math.max(2,_loc2_.width)));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr151:
                                    while(true)
                                    {
                                       §§push(int(Math.max(2,_loc2_.height)));
                                       if(!(_loc5_ || this))
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       continue loop0;
                                    }
                                 }
                              }
                              addr112:
                              if(!(_loc6_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    this.§<o§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       addr73:
                                       if(_loc5_ || this)
                                       {
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    addr108:
                                    while(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr112);
                                       }
                                       else
                                       {
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 addr201:
                                 return this.§<o§;
                                 addr119:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr201);
            }
            §§goto(addr41);
         }
         addr30:
         return this.§<o§;
      }
      
      public function get § !]§() : Boolean
      {
         return this.§,!I§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ T§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§]!&§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§]!&§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§]!&§.width);
         if(_loc2_ || this)
         {
            return §§pop() * this.§,!d§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§]!&§.height);
         if(!(_loc1_ && _loc2_))
         {
            return §§pop() * this.§,!d§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]!&§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]!&§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§]!&§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
