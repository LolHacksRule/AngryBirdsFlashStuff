package §[P§
{
   import §-Z§.§?h§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §&!+§ extends §[P§.Texture
   {
       
      
      private var §2R§:TextureBase;
      
      private var §?!#§:int;
      
      private var §26§:int;
      
      private var §%!6§:Boolean;
      
      private var §3Y§:Boolean;
      
      private var §?!'§:Boolean;
      
      private var §@$§:Object;
      
      private var §;,§:Boolean = false;
      
      public function §&!+§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
            this.§2R§ = param1;
            this.§?!#§ = param2;
            loop0:
            while(true)
            {
               this.§26§ = param3;
               while(true)
               {
                  this.§%!6§ = param4;
                  addr71:
                  while(_loc7_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§2R§)
            {
               while(true)
               {
                  this.§2R§.dispose();
                  addr74:
                  while(true)
                  {
                  }
                  addr48:
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
            while(true)
            {
               this.§<+§(null);
               while(_loc1_ || _loc1_)
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr48);
               }
               §§goto(addr74);
            }
            §§goto(addr55);
         }
         §§goto(addr74);
      }
      
      public function §<+§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@$§ == null);
         while(§§pop())
         {
            do
            {
               §§pop();
               §§push(param1 == null);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
            }
            while(!(_loc2_ || this));
            
            if(_loc2_ || _loc2_)
            {
               break;
            }
         }
         if(§§pop())
         {
            §§push(§?h§.§ n§);
            while(true)
            {
               §§push(Event.CONTEXT3D_CREATE);
               addr96:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§ ,§);
                  addr99:
                  while(true)
                  {
                  }
               }
            }
            addr94:
         }
         for(; param1 == null; §§goto(addr99))
         {
            §§push(§?h§.§ n§);
            if(_loc2_)
            {
               §§push(Event.CONTEXT3D_CREATE);
               if(!_loc3_)
               {
                  §§pop().removeEventListener(§§pop(),this.§ ,§);
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr94);
            }
            §§goto(addr96);
         }
         this.§@$§ = param1;
      }
      
      private function § ,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;,§ = true;
            while(param1 != null)
            {
               if(_loc3_)
               {
                  this.§<+§(param1);
               }
               if(!(_loc2_ && param1))
               {
                  addr50:
                  break;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function get §[Z§() : Boolean
      {
         return this.§?!'§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4A§(param1);
         }
         return this.§2R§;
      }
      
      override public function get root() : §[P§.Texture
      {
         return this;
      }
      
      private function §4A§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc6_)
         {
            if(!this.§;,§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§@$§ as BitmapData;
         var _loc3_:ByteArray = this.§@$§ as ByteArray;
         if(!_loc7_)
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  _loc4_ = param1.createTexture(this.§?!#§,this.§26§,Context3DTextureFormat.BGRA,this.§?!'§);
                  if(_loc6_)
                  {
                     §[P§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§%!6§);
                     if(!(_loc7_ && _loc3_))
                     {
                        addr153:
                        this.§2R§ = _loc4_;
                        if(_loc6_ || param1)
                        {
                           this.§;,§ = false;
                        }
                     }
                  }
                  return;
               }
               addr103:
               §§push(Context3DTextureFormat.COMPRESSED);
               if(_loc7_)
               {
               }
               addr120:
               _loc5_ = §§pop();
               _loc4_ = param1.createTexture(this.§?!#§,this.§26§,_loc5_,this.§?!'§);
               if(_loc6_ || _loc3_)
               {
                  §[P§.Texture.uploadAtfData(_loc4_,_loc3_);
               }
               addr119:
            }
            else if(_loc3_)
            {
               if(_loc6_ || _loc2_)
               {
                  if(_loc3_[6] == 2)
                  {
                     if(_loc7_)
                     {
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr103);
            }
            §§goto(addr153);
         }
         §§goto(addr103);
      }
      
      override public function get width() : Number
      {
         return this.§?!#§;
      }
      
      override public function get height() : Number
      {
         return this.§26§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%!6§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3Y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@$§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
