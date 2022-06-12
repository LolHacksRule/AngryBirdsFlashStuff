package §0!R§
{
   import §1V§.§1!-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@?§ extends Texture
   {
      
      private static var §`!f§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`!f§ = new Point();
         }
      }
      
      private var §[!N§:Texture;
      
      private var §!!d§:Rectangle;
      
      private var §!5§:Rectangle;
      
      private var §@!z§:Boolean;
      
      private var §'T§:BitmapData;
      
      public function §@?§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§[!N§ = param1;
               loop1:
               while(true)
               {
                  this.§@!z§ = param3;
                  do
                  {
                     if(!(_loc5_ && param3))
                     {
                        if(param2 == null)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           this.§]B§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                           if(_loc4_)
                           {
                              §§goto(addr24);
                           }
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  while(!_loc4_);
                  
                  §§goto(addr101);
               }
            }
         }
         addr101:
         addr24:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§@!z§)
            {
               loop0:
               while(true)
               {
                  this.§[!N§.dispose();
                  addr82:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        this.§'T§ = null;
                        loop4:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop6;
                           }
                           if(!_loc1_)
                           {
                              addr60:
                              while(true)
                              {
                                 super.dispose();
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       return;
                                       addr41:
                                    }
                                    break;
                                 }
                                 continue loop4;
                                 §§goto(addr60);
                              }
                              §§goto(addr82);
                              addr24:
                           }
                           while(true)
                           {
                              this.§'T§.dispose();
                              continue loop6;
                           }
                        }
                        addr75:
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               if(this.§'T§)
               {
                  §§goto(addr65);
               }
               §§goto(addr24);
               §§goto(addr82);
            }
            §§goto(addr41);
         }
         §§goto(addr65);
      }
      
      private function §]B§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(_loc5_ || _loc3_)
         {
            this.§!!d§ = param1;
            if(_loc5_)
            {
               this.§!5§ = param1.clone();
            }
         }
         var _loc2_:§@?§ = this.§[!N§ as §@?§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!!d§;
            if(_loc5_)
            {
               this.§!5§.x = _loc3_.x + this.§!5§.x * _loc3_.width;
               while(true)
               {
                  this.§!5§.y = _loc3_.y + this.§!5§.y * _loc3_.height;
                  addr113:
                  loop2:
                  while(true)
                  {
                     addr77:
                     while(true)
                     {
                        this.§!5§.width *= _loc3_.width;
                        addr87:
                        while(_loc5_)
                        {
                        }
                        continue loop2;
                     }
                  }
               }
               addr126:
            }
            while(true)
            {
               this.§!5§.height *= _loc3_.height;
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr77);
                  }
                  else
                  {
                     §§goto(addr126);
                  }
               }
               §§goto(addr87);
            }
            _loc2_ = _loc2_.§[!N§ as §@?§;
         }
      }
      
      override public function adjustVertexData(param1:§1!-§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param1)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§!5§.x;
         var _loc5_:Number = this.§!5§.y;
         var _loc6_:Number = this.§!5§.width;
         var _loc7_:Number = this.§!5§.height;
         §§push(param2);
         if(_loc10_)
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
                  break;
               }
               while(!(_loc10_ || param1))
               {
                  while(!(_loc10_ || param3))
                  {
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
                  _loc9_++;
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§`!f§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(!(_loc11_ && param3))
               {
                  §§push(§`!f§.x * _loc6_);
                  if(_loc10_ || param3)
                  {
                     addr128:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        §§push(§§pop() + §`!f§.y * _loc7_);
                     }
                  }
                  §§goto(addr136);
               }
               §§goto(addr128);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§[!N§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§[!N§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || _loc2_)
         {
            if(this.§'T§)
            {
               if(_loc5_)
               {
                  return this.§'T§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(!_loc6_)
         {
            if(_loc1_)
            {
               addr46:
               _loc2_ = this.clipping;
               if(_loc5_ || this)
               {
                  _loc2_.x *= this.bitmapData.width;
                  while(true)
                  {
                     _loc2_.y *= this.bitmapData.height;
                     while(true)
                     {
                        _loc2_.width *= this.bitmapData.width;
                        while(_loc5_ || _loc2_)
                        {
                           _loc2_.height *= this.bitmapData.height;
                           loop3:
                           while(true)
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§push(int(Math.max(2,_loc2_.height)));
                                 addr144:
                                 continue loop3;
                                 if(!_loc6_)
                                 {
                                    _loc4_ = §§pop();
                                    loop6:
                                    while(_loc5_ || _loc1_)
                                    {
                                       loop7:
                                       do
                                       {
                                          this.§'T§ = new BitmapData(_loc3_,_loc4_,true,0);
                                          while(!_loc6_)
                                          {
                                             this.§'T§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                             if(!(_loc6_ && _loc1_))
                                             {
                                                continue loop7;
                                             }
                                          }
                                          continue loop6;
                                       }
                                       while(false);
                                       
                                       return this.§'T§;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     §§goto(addr144);
                  }
               }
               §§goto(addr154);
            }
            §§goto(addr201);
         }
         §§goto(addr46);
      }
      
      public function get §7!=§() : Boolean
      {
         return this.§@!z§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§!5§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§[!N§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§[!N§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!N§.width);
         if(_loc2_)
         {
            return §§pop() * this.§!!d§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!N§.height);
         if(!(_loc1_ && _loc2_))
         {
            return §§pop() * this.§!!d§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§[!N§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§[!N§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!N§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
