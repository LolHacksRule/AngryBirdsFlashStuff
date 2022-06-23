package §5!@§
{
   import §#!;§.§;T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §%<§ extends §5!@§.Texture
   {
       
      
      private var §^!,§:TextureBase;
      
      private var § l§:int;
      
      private var §4N§:int;
      
      private var §##§:Boolean;
      
      private var §+!8§:Boolean;
      
      private var §6! §:Boolean;
      
      private var §2N§:Object;
      
      private var §+C§:Boolean = false;
      
      public function §%<§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(!_loc7_)
         {
            this.§^!,§ = param1;
            if(_loc8_ || param1)
            {
               this.§ l§ = param2;
               if(!_loc7_)
               {
                  §§goto(addr56);
               }
               §§goto(addr66);
            }
            §§goto(addr56);
         }
         addr56:
         this.§4N§ = param3;
         if(!_loc7_)
         {
            this.§##§ = param4;
            if(!_loc7_)
            {
               addr66:
               this.§+!8§ = param5;
            }
         }
         this.§6! § = param6;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^!,§)
            {
               if(!(_loc1_ && this))
               {
                  this.§^!,§.dispose();
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr54);
            }
         }
         addr49:
         this.§"a§(null);
         if(_loc2_)
         {
            addr54:
            super.dispose();
         }
      }
      
      public function §"a§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§2N§ == null);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr54:
                     §§pop();
                     if(!_loc2_)
                     {
                        addr57:
                        §§push(param1 == null);
                        if(!_loc2_)
                        {
                           addr63:
                           if(!§§pop())
                           {
                              if(_loc3_ || param1)
                              {
                                 §§push(§;T§.§,H§);
                                 if(!_loc2_)
                                 {
                                    §§push(Event.CONTEXT3D_CREATE);
                                    if(_loc3_)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§'!0§);
                                       if(!_loc2_)
                                       {
                                          addr94:
                                          if(param1 == null)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr103:
                                                §;T§.§,H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
                                                addr106:
                                                this.§2N§ = param1;
                                                addr101:
                                                addr99:
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr99);
                           }
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr54);
         }
         §§goto(addr57);
      }
      
      private function §'!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
            this.§+C§ = true;
            if(!(_loc3_ && param1))
            {
               if(param1 != null)
               {
                  if(!_loc3_)
                  {
                     this.§"a§(param1);
                  }
               }
            }
         }
      }
      
      public function get §"K§() : Boolean
      {
         return this.§6! §;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;^§(param1);
         }
         return this.§^!,§;
      }
      
      override public function get root() : §5!@§.Texture
      {
         return this;
      }
      
      private function §;^§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_)
         {
            if(!this.§+C§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§2N§ as BitmapData;
         var _loc3_:ByteArray = this.§2N§ as ByteArray;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  _loc4_ = param1.createTexture(this.§ l§,this.§4N§,Context3DTextureFormat.BGRA,this.§6! §);
                  if(!_loc7_)
                  {
                     §5!@§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§##§);
                     if(_loc6_)
                     {
                        §§goto(addr153);
                     }
                  }
                  §§goto(addr163);
               }
               else
               {
                  addr108:
                  addr125:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!_loc7_)
                  {
                     addr124:
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  _loc4_ = param1.createTexture(this.§ l§,this.§4N§,_loc5_,this.§6! §);
                  if(!_loc7_)
                  {
                     §5!@§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
            }
            else if(_loc3_)
            {
               if(!(_loc7_ && _loc2_))
               {
                  addr95:
                  if(_loc3_[6] == 2)
                  {
                     if(_loc6_ || _loc2_)
                     {
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr108);
            }
            addr153:
            this.§^!,§ = _loc4_;
            if(!(_loc7_ && _loc2_))
            {
               addr163:
               this.§+C§ = false;
            }
            return;
         }
         §§goto(addr95);
      }
      
      override public function get width() : Number
      {
         return this.§ l§;
      }
      
      override public function get height() : Number
      {
         return this.§4N§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§##§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§2N§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
