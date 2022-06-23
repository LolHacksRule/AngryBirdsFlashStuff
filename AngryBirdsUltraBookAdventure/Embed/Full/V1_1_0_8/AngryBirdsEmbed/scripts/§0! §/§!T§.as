package §0! §
{
   import §=!0§.§>I§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §!T§ extends §0! §.Texture
   {
       
      
      private var §0j§:TextureBase;
      
      private var §[s§:int;
      
      private var §8!&§:int;
      
      private var §6!'§:Boolean;
      
      private var §7R§:Boolean;
      
      private var §&]§:Boolean;
      
      private var § true§:Object;
      
      private var §`!?§:Boolean = false;
      
      public function §!T§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         super();
         if(_loc7_ || param1)
         {
            this.§0j§ = param1;
            if(_loc7_ || param2)
            {
               this.§[s§ = param2;
               if(!_loc8_)
               {
                  this.§8!&§ = param3;
                  if(!(_loc8_ && param3))
                  {
                     addr70:
                     this.§6!'§ = param4;
                     addr73:
                     this.§7R§ = param5;
                     this.§&]§ = param6;
                  }
                  return;
               }
            }
            §§goto(addr73);
         }
         §§goto(addr70);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§0j§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§0j§.dispose();
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr49);
            }
            this.§#B§(null);
            if(_loc1_)
            {
            }
            §§goto(addr49);
         }
         addr49:
         super.dispose();
      }
      
      public function §#B§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ true§ == null);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§pop();
                     §§push(param1 == null);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                  }
               }
            }
            if(§§pop())
            {
               addr67:
               §§push(§>I§.§`S§);
               if(_loc3_)
               {
                  §§push(Event.CONTEXT3D_CREATE);
                  if(!_loc2_)
                  {
                     §§pop().addEventListener(§§pop(),this.§@!C§);
                     §§goto(addr78);
                  }
               }
               §§goto(addr87);
            }
            addr78:
            if(param1 == null)
            {
               if(_loc3_)
               {
                  addr87:
                  §>I§.§`S§.removeEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
               }
            }
            this.§ true§ = param1;
            return;
         }
         §§goto(addr67);
      }
      
      private function §@!C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
            this.§`!?§ = true;
            if(_loc3_)
            {
               if(param1 != null)
               {
                  if(_loc2_ && _loc3_)
                  {
                  }
               }
               §§goto(addr47);
            }
            this.§#B§(param1);
         }
         addr47:
      }
      
      public function get §6!2§() : Boolean
      {
         return this.§&]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!C§(param1);
         }
         return this.§0j§;
      }
      
      override public function get root() : §0! §.Texture
      {
         return this;
      }
      
      private function §1!C§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc6_ || this)
         {
            if(!this.§`!?§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§ true§ as BitmapData;
         var _loc3_:ByteArray = this.§ true§ as ByteArray;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(!_loc7_)
               {
                  _loc4_ = param1.createTexture(this.§[s§,this.§8!&§,Context3DTextureFormat.BGRA,this.§&]§);
                  if(!(_loc7_ && _loc3_))
                  {
                     §0! §.Texture.uploadBitmapData(_loc4_,_loc2_,this.§6!'§);
                     if(!_loc7_)
                     {
                        addr153:
                        this.§0j§ = _loc4_;
                        if(_loc7_)
                        {
                        }
                        §§goto(addr161);
                     }
                     this.§`!?§ = false;
                  }
                  addr161:
                  return;
               }
               addr100:
               if(_loc3_[6] == 2)
               {
                  if(_loc6_)
                  {
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!_loc7_)
                     {
                        addr135:
                        _loc5_ = §§pop();
                     }
                     §§goto(addr135);
                  }
                  addr136:
                  _loc4_ = param1.createTexture(this.§[s§,this.§8!&§,_loc5_,this.§&]§);
                  if(_loc6_)
                  {
                     §0! §.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
                  §§goto(addr153);
               }
               else
               {
                  §§push(Context3DTextureFormat.BGRA);
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr135);
                  }
               }
               §§goto(addr135);
            }
            else if(_loc3_)
            {
               if(!(_loc7_ && this))
               {
                  §§goto(addr100);
               }
               §§goto(addr136);
            }
            §§goto(addr153);
         }
         §§goto(addr100);
      }
      
      override public function get width() : Number
      {
         return this.§[s§;
      }
      
      override public function get height() : Number
      {
         return this.§8!&§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6!'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§7R§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§ true§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
