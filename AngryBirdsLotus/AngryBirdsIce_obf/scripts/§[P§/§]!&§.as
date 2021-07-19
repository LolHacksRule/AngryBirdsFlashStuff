package §[P§
{
   import §3!$§.§+^§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!&§ extends Texture
   {
      
      private static var §0!3§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!3§ = new Point();
         }
      }
      
      private var §67§:Texture;
      
      private var §2,§:Rectangle;
      
      private var §8p§:Rectangle;
      
      private var §@W§:Boolean;
      
      private var §+!4§:BitmapData;
      
      public function §]!&§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            this.§67§ = param1;
            this.§@W§ = param3;
            do
            {
               if(param2 == null)
               {
                  continue;
               }
               this.§-n§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
            }
            while(!_loc5_);
            
            §§goto(addr19);
         }
         addr19:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§@W§)
         {
            if(!(_loc1_ && _loc1_))
            {
               this.§67§.dispose();
            }
         }
         if(this.§+!4§)
         {
            this.§+!4§.dispose();
            this.§+!4§ = null;
            while(true)
            {
               §§goto(addr32);
            }
         }
         addr32:
         while(true)
         {
            super.dispose();
            if(!_loc1_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §-n§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            this.§2,§ = param1;
            if(_loc4_ || _loc2_)
            {
               this.§8p§ = param1.clone();
            }
         }
         var _loc2_:§]!&§ = this.§67§ as §]!&§;
         loop0:
         for(; _loc2_; _loc2_ = _loc2_.§67§ as §]!&§)
         {
            _loc3_ = _loc2_.§2,§;
            if(!(_loc5_ && this))
            {
               this.§8p§.x = _loc3_.x + this.§8p§.x * _loc3_.width;
               while(true)
               {
                  this.§8p§.y = _loc3_.y + this.§8p§.y * _loc3_.height;
                  addr132:
                  loop2:
                  while(true)
                  {
                     addr98:
                     while(true)
                     {
                        this.§8p§.width *= _loc3_.width;
                        continue loop2;
                     }
                  }
                  addr89:
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr98);
               }
            }
            while(true)
            {
               this.§8p§.height *= _loc3_.height;
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               if(_loc4_ || param1)
               {
                  §§goto(addr89);
               }
               §§goto(addr132);
            }
         }
      }
      
      override public function adjustVertexData(param1:§+^§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§8p§.x;
         var _loc5_:Number = this.§8p§.y;
         var _loc6_:Number = this.§8p§.width;
         var _loc7_:Number = this.§8p§.height;
         §§push(param2);
         if(!_loc11_)
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
         loop0:
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!_loc11_)
               {
                  if(_loc10_ || param2)
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(_loc10_ || param1)
                  {
                     §§push(§0!3§.x * _loc6_);
                     if(_loc10_)
                     {
                        addr115:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(_loc10_ || this)
                        {
                           addr123:
                           §§push(§§pop() + §0!3§.y * _loc7_);
                        }
                        §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                        loop2:
                        while(true)
                        {
                           _loc9_++;
                           addr84:
                           while(!_loc10_)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr115);
                  addr136:
               }
               §§goto(addr84);
            }
            else
            {
               param1.getTexCoords(_loc9_,§0!3§);
            }
            §§goto(addr136);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§67§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§67§.bitmapData;
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
            if(this.§+!4§)
            {
               if(!_loc6_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(_loc5_ || _loc3_)
            {
               if(_loc1_)
               {
                  addr46:
                  _loc2_ = this.clipping;
                  _loc2_.x *= this.bitmapData.width;
                  loop0:
                  while(true)
                  {
                     _loc2_.y *= this.bitmapData.height;
                     _loc2_.width *= this.bitmapData.width;
                     _loc2_.height *= this.bitmapData.height;
                     loop1:
                     while(true)
                     {
                        §§push(int(Math.max(2,_loc2_.width)));
                        while(true)
                        {
                           _loc3_ = §§pop();
                           §§push(int(Math.max(2,_loc2_.height)));
                           addr128:
                           continue loop0;
                           if(_loc6_)
                           {
                              continue;
                           }
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§+!4§ = new BitmapData(_loc3_,_loc4_,true,0);
                                 if(!_loc6_)
                                 {
                                    if(_loc6_ && _loc1_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                                 addr73:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               return this.§+!4§;
            }
            §§goto(addr46);
         }
         addr30:
         return this.§+!4§;
      }
      
      public function get §+C§() : Boolean
      {
         return this.§@W§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8p§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§67§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§67§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§67§.width);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * this.§2,§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§67§.height);
         if(_loc2_ || _loc1_)
         {
            return §§pop() * this.§2,§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§67§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§67§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§67§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
