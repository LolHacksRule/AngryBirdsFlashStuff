package §8z§
{
   import §+§.§0&§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>6§ extends Texture
   {
      
      private static var §6!D§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §>6§)
         {
            §6!D§ = new Point();
         }
      }
      
      private var §'#§:Texture;
      
      private var §,!3§:Rectangle;
      
      private var §%!I§:Rectangle;
      
      private var §3!%§:Boolean;
      
      private var §<!J§:BitmapData;
      
      public function §>6§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
         }
         while(true)
         {
            this.§'#§ = param1;
            do
            {
               this.§3!%§ = param3;
            }
            while(_loc5_ && param2);
            
            if(param2 != null)
            {
               this.§-G§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               if(_loc5_)
               {
                  break;
               }
               if(!(_loc5_ && param3))
               {
                  §§goto(addr24);
               }
               addr89:
               if(_loc4_)
               {
                  this.§-G§(new Rectangle(0,0,1,1));
                  break;
               }
               continue;
            }
            §§goto(addr89);
         }
         addr24:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§3!%§)
            {
               this.§'#§.dispose();
               addr76:
               while(true)
               {
               }
               addr76:
            }
            while(true)
            {
               if(this.§<!J§)
               {
                  this.§<!J§.dispose();
                  this.§<!J§ = null;
                  while(true)
                  {
                  }
                  addr61:
               }
               while(true)
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr61);
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function §-G§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            this.§,!3§ = param1;
            if(!(_loc4_ && _loc3_))
            {
               addr32:
               this.§%!I§ = param1.clone();
            }
            var _loc2_:§>6§ = this.§'#§ as §>6§;
            while(_loc2_)
            {
               _loc3_ = _loc2_.§,!3§;
               if(_loc5_)
               {
                  this.§%!I§.x = _loc3_.x + this.§%!I§.x * _loc3_.width;
                  while(true)
                  {
                     this.§%!I§.y = _loc3_.y + this.§%!I§.y * _loc3_.height;
                     addr118:
                     loop2:
                     while(true)
                     {
                        addr77:
                        while(true)
                        {
                           this.§%!I§.width *= _loc3_.width;
                           continue loop2;
                        }
                     }
                  }
                  addr131:
               }
               while(true)
               {
                  this.§%!I§.height *= _loc3_.height;
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
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr87);
               }
               _loc2_ = _loc2_.§'#§ as §>6§;
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function adjustVertexData(param1:§0&§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && this))
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§%!I§.x;
         var _loc5_:Number = this.§%!I§.y;
         var _loc6_:Number = this.§%!I§.width;
         var _loc7_:Number = this.§%!I§.height;
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc10_)
               {
                  continue;
               }
               if(!(_loc10_ && this))
               {
                  if(_loc11_ || this)
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(!(_loc10_ && param1))
                  {
                     §§push(§6!D§.x * _loc6_);
                     if(!(_loc10_ && this))
                     {
                        addr131:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(!(_loc10_ && param2))
                        {
                           addr139:
                           §§push(§§pop() + §6!D§.y * _loc7_);
                        }
                        §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                        _loc9_++;
                        continue;
                        addr145:
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr131);
                  addr152:
               }
               §§goto(addr145);
            }
            else
            {
               param1.getTexCoords(_loc9_,§6!D§);
            }
            §§goto(addr152);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§'#§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§'#§.bitmapData;
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
            if(this.§<!J§)
            {
               if(_loc6_)
               {
                  §§goto(addr36);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!(_loc5_ && _loc3_))
            {
               if(_loc1_)
               {
                  addr52:
                  _loc2_ = this.clipping;
                  _loc2_.x *= this.bitmapData.width;
                  _loc2_.y *= this.bitmapData.height;
                  loop0:
                  do
                  {
                     _loc2_.width *= this.bitmapData.width;
                     while(true)
                     {
                        _loc2_.height *= this.bitmapData.height;
                        §§push(int(Math.max(2,_loc2_.width)));
                        while(true)
                        {
                           _loc3_ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(int(Math.max(2,_loc2_.height)));
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(_loc4_ = §§pop(), _loc5_ && this);
                  
                  do
                  {
                     this.§<!J§ = new BitmapData(_loc3_,_loc4_,true,0);
                     this.§<!J§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                  }
                  while(false);
                  
               }
               return this.§<!J§;
            }
            §§goto(addr52);
         }
         addr36:
         return this.§<!J§;
      }
      
      public function get §3!+§() : Boolean
      {
         return this.§3!%§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%!I§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§'#§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§'#§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§'#§.width);
         if(_loc1_)
         {
            return §§pop() * this.§,!3§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§'#§.height);
         if(_loc2_)
         {
            return §§pop() * this.§,!3§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'#§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'#§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'#§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
