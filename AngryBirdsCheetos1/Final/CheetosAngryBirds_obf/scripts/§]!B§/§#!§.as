package §]!B§
{
   import §;! §.§?!T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#!§ extends Texture
   {
      
      private static var §?z§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?z§ = new Point();
         }
      }
      
      private var §`!Z§:Texture;
      
      private var §&f§:Rectangle;
      
      private var §%"§:Rectangle;
      
      private var §0T§:Boolean;
      
      private var §+!?§:BitmapData;
      
      public function §#!§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§`!Z§ = param1;
               addr80:
               if(_loc5_ || this)
               {
                  this.§%U§(new Rectangle(0,0,1,1));
                  addr95:
                  if(!(_loc5_ || param3))
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(param2 != null)
                           {
                              this.§%U§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              if(!(_loc4_ && param2))
                              {
                                 §§goto(addr20);
                              }
                           }
                           §§goto(addr80);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§0T§ = param3;
                              continue loop2;
                           }
                           addr124:
                        }
                     }
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr124);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§0T§)
            {
               if(_loc1_ || this)
               {
                  this.§`!Z§.dispose();
               }
               while(true)
               {
                  addr52:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
               addr96:
            }
            while(true)
            {
               if(this.§+!?§)
               {
                  addr69:
                  while(true)
                  {
                     this.§+!?§.dispose();
                     addr72:
                     while(true)
                     {
                        this.§+!?§ = null;
                        addr64:
                        while(true)
                        {
                        }
                     }
                  }
                  addr69:
               }
               while(true)
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr72);
               }
               §§goto(addr52);
               §§goto(addr96);
            }
            §§goto(addr59);
         }
         §§goto(addr69);
      }
      
      private function §%U§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && this))
         {
            this.§&f§ = param1;
            if(!_loc4_)
            {
               addr32:
               this.§%"§ = param1.clone();
            }
            var _loc2_:§#!§ = this.§`!Z§ as §#!§;
            while(_loc2_)
            {
               _loc3_ = _loc2_.§&f§;
               if(!_loc4_)
               {
                  this.§%"§.x = _loc3_.x + this.§%"§.x * _loc3_.width;
                  while(true)
                  {
                     this.§%"§.y = _loc3_.y + this.§%"§.y * _loc3_.height;
                     loop2:
                     while(true)
                     {
                        addr80:
                        while(true)
                        {
                           this.§%"§.width *= _loc3_.width;
                           continue loop2;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr80);
               }
               _loc2_ = _loc2_.§`!Z§ as §#!§;
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function adjustVertexData(param1:§?!T§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§%"§.x;
         var _loc5_:Number = this.§%"§.y;
         var _loc6_:Number = this.§%"§.width;
         var _loc7_:Number = this.§%"§.height;
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc11_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!(_loc10_ && this))
               {
                  break;
               }
               while(!(_loc11_ || param2))
               {
                  while(!(_loc11_ || param2))
                  {
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
                  _loc9_++;
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§?z§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(!(_loc10_ && param1))
               {
                  §§push(§?z§.x * _loc6_);
                  if(_loc11_ || this)
                  {
                     addr119:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() + §?z§.y * _loc7_);
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr119);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§`!Z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!Z§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(!(_loc5_ && this))
         {
            if(this.§+!?§)
            {
               if(_loc6_ || _loc1_)
               {
                  §§goto(addr41);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!_loc5_)
            {
               if(_loc1_)
               {
                  addr52:
                  _loc2_ = this.clipping;
                  if(!(_loc5_ && this))
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
                        while(true)
                        {
                           _loc2_.height *= this.bitmapData.height;
                           loop3:
                           while(_loc6_)
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              loop4:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr148:
                                 while(!_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              addr114:
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              this.§+!?§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                              addr121:
                              if(_loc6_ || this)
                              {
                                 addr84:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       this.§+!?§ = new BitmapData(_loc3_,_loc4_,true,0);
                                       addr105:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§goto(addr114);
                                          }
                                          else
                                          {
                                             §§goto(addr148);
                                          }
                                       }
                                       continue loop3;
                                       §§goto(addr84);
                                    }
                                    addr86:
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr105);
                           }
                        }
                     }
                  }
               }
               addr202:
               return this.§+!?§;
            }
            §§goto(addr52);
         }
         addr41:
         return this.§+!?§;
      }
      
      public function get §7!&§() : Boolean
      {
         return this.§0T§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%"§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§`!Z§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§`!Z§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`!Z§.width);
         if(_loc2_)
         {
            return §§pop() * this.§&f§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`!Z§.height);
         if(_loc2_ || _loc2_)
         {
            return §§pop() * this.§&f§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§`!Z§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§`!Z§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§`!Z§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
