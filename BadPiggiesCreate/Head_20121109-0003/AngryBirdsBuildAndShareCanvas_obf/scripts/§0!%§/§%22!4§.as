package §0!%§
{
   import §`!=§.§?!X§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!4§ extends Texture
   {
      
      private static var §'O§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'O§ = new Point();
         }
      }
      
      private var §6"4§:Texture;
      
      private var §@v§:Rectangle;
      
      private var §1!+§:Rectangle;
      
      private var §#m§:Boolean;
      
      private var §]!%§:BitmapData;
      
      public function §"!4§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§6"4§ = param1;
            do
            {
               this.§#m§ = param3;
               continue loop0;
            }
            while(!_loc5_);
            
            addr25:
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§#m§)
            {
               while(true)
               {
                  this.§6"4§.dispose();
                  addr91:
                  while(true)
                  {
                  }
                  addr52:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  addr59:
                  while(true)
                  {
                     super.dispose();
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           return;
                           addr30:
                        }
                        break;
                     }
                     loop4:
                     while(_loc2_ && _loc1_)
                     {
                        while(true)
                        {
                           this.§]!%§ = null;
                           continue loop4;
                        }
                     }
                     §§goto(addr52);
                     §§goto(addr59);
                  }
                  §§goto(addr91);
                  addr23:
               }
            }
            while(true)
            {
               if(this.§]!%§)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this.§]!%§.dispose();
                  }
                  §§goto(addr84);
               }
               §§goto(addr23);
               §§goto(addr91);
            }
            §§goto(addr30);
         }
         §§goto(addr84);
      }
      
      private function §'Z§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§@v§ = param1;
            if(!_loc5_)
            {
               addr31:
               this.§1!+§ = param1.clone();
            }
            var _loc2_:§"!4§ = this.§6"4§ as §"!4§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§6"4§ as §"!4§)
            {
               _loc3_ = _loc2_.§@v§;
               if(!(_loc5_ && param1))
               {
                  this.§1!+§.x = _loc3_.x + this.§1!+§.x * _loc3_.width;
               }
               while(true)
               {
                  this.§1!+§.y = _loc3_.y + this.§1!+§.y * _loc3_.height;
                  loop2:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        this.§1!+§.width *= _loc3_.width;
                        continue loop2;
                     }
                     continue loop0;
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  this.§1!+§.height *= _loc3_.height;
                  if(!_loc5_)
                  {
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr89);
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function adjustVertexData(param1:§?!X§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§1!+§.x;
         var _loc5_:Number = this.§1!+§.y;
         var _loc6_:Number = this.§1!+§.width;
         var _loc7_:Number = this.§1!+§.height;
         §§push(param2);
         if(!(_loc10_ && param1))
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
               if(_loc11_ || param2)
               {
                  break;
               }
               do
               {
                  if(_loc10_)
                  {
                     continue;
                  }
               }
               while(!_loc11_);
               
               continue;
               addr88:
            }
            else
            {
               param1.getTexCoords(_loc9_,§'O§);
            }
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc11_)
               {
                  §§push(§'O§.x * _loc6_);
                  if(!(_loc10_ && this))
                  {
                     addr111:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        addr114:
                        §§push(§§pop() + §'O§.y * _loc7_);
                     }
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                     while(true)
                     {
                        _loc9_++;
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr111);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§6"4§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6"4§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            if(this.§]!%§)
            {
               if(_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!(_loc5_ && this))
            {
               if(_loc1_)
               {
                  addr47:
                  _loc2_ = this.clipping;
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc2_.x *= this.bitmapData.width;
                     loop0:
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        while(true)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           loop3:
                           for(; _loc6_ || _loc2_; if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           },if(!_loc5_)
                           {
                              §§goto(addr111);
                           },while(true)
                           {
                              _loc2_.height *= this.bitmapData.height;
                              continue loop3;
                           })
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(Math.max(2,_loc2_.height)));
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             loop7:
                                             do
                                             {
                                                this.§]!%§ = new BitmapData(_loc3_,_loc4_,true,0);
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                   addr111:
                                                   this.§]!%§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             while(false);
                                             
                                             §§goto(addr192);
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr162);
               }
               addr192:
               return this.§]!%§;
            }
            §§goto(addr47);
         }
         addr31:
         return this.§]!%§;
      }
      
      public function get §!"9§() : Boolean
      {
         return this.§#m§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§1!+§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§6"4§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§6"4§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6"4§.width);
         if(!(_loc2_ && this))
         {
            return §§pop() * this.§@v§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§6"4§.height);
         if(!(_loc1_ && this))
         {
            return §§pop() * this.§@v§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6"4§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6"4§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6"4§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
