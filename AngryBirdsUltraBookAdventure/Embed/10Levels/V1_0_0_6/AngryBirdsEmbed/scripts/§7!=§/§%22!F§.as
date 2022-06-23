package §7!=§
{
   import §catch§.§4@§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §"!F§ extends §7!=§.Texture
   {
       
      
      private var §[!,§:TextureBase;
      
      private var §5;§:int;
      
      private var §>!'§:int;
      
      private var §^s§:Boolean;
      
      private var §7M§:Boolean;
      
      private var §3h§:Boolean;
      
      private var §#6§:Object;
      
      private var §>r§:Boolean = false;
      
      public function §"!F§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         this.§[!,§ = param1;
         this.§5;§ = param2;
         if(_loc8_ || param1)
         {
            this.§>!'§ = param3;
            this.§^s§ = param4;
            if(_loc8_ || this)
            {
               addr65:
               this.§7M§ = param5;
               if(!_loc7_)
               {
                  this.§3h§ = param6;
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§[!,§)
            {
               if(!(_loc2_ && this))
               {
                  this.§[!,§.dispose();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr48:
                     this.§<f§(null);
                     if(_loc1_)
                     {
                        addr53:
                        super.dispose();
                     }
                  }
                  return;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr48);
      }
      
      public function §<f§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§#6§ == null);
         if(!(_loc3_ && this))
         {
            if(§§pop())
            {
               if(_loc2_ || param1)
               {
                  §§pop();
                  if(!_loc3_)
                  {
                     §§push(param1 == null);
                     if(!_loc3_)
                     {
                        §§goto(addr55);
                     }
                     addr55:
                     if(!§§pop())
                     {
                        §§push(§4@§.§0W§);
                        if(_loc2_)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           if(_loc2_)
                           {
                              §§pop().addEventListener(§§pop(),this.§]B§);
                              §§goto(addr94);
                           }
                           §§pop().removeEventListener(§§pop(),this.§]B§);
                           if(_loc2_ || param1)
                           {
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr94);
                  }
                  addr94:
                  if(param1 == null)
                  {
                     addr82:
                     §§push(§4@§.§0W§);
                     §§push(Event.CONTEXT3D_CREATE);
                  }
                  this.§#6§ = param1;
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §]B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>r§ = true;
            if(_loc2_)
            {
               addr23:
               if(param1 != null)
               {
                  if(_loc2_)
                  {
                     this.§<f§(param1);
                  }
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function get §3k§() : Boolean
      {
         return this.§3h§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§3&§(param1);
         }
         return this.§[!,§;
      }
      
      override public function get root() : §7!=§.Texture
      {
         return this;
      }
      
      private function §3&§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!(_loc7_ && this))
         {
            if(!this.§>r§)
            {
               if(_loc6_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§#6§ as BitmapData;
         var _loc3_:ByteArray = this.§#6§ as ByteArray;
         if(_loc6_ || _loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc7_ && this))
               {
                  _loc4_ = param1.createTexture(this.§5;§,this.§>!'§,Context3DTextureFormat.BGRA,this.§3h§);
                  if(_loc6_ || param1)
                  {
                     §7!=§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§^s§);
                     if(_loc6_ || this)
                     {
                        addr178:
                        this.§[!,§ = _loc4_;
                        if(!_loc7_)
                        {
                           this.§>r§ = false;
                        }
                     }
                  }
                  return;
               }
               addr128:
               §§push(Context3DTextureFormat.COMPRESSED);
               if(_loc6_ || this)
               {
               }
               addr160:
               _loc5_ = §§pop();
               _loc4_ = param1.createTexture(this.§5;§,this.§>!'§,_loc5_,this.§3h§);
               if(_loc6_)
               {
                  §7!=§.Texture.uploadAtfData(_loc4_,_loc3_);
               }
               addr159:
            }
            else if(_loc3_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  addr120:
                  if(_loc3_[6] == 2)
                  {
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr128);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc7_ && _loc2_))
                     {
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr160);
               }
               §§goto(addr128);
            }
            §§goto(addr178);
         }
         §§goto(addr120);
      }
      
      override public function get width() : Number
      {
         return this.§5;§;
      }
      
      override public function get height() : Number
      {
         return this.§>!'§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^s§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§7M§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§#6§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
