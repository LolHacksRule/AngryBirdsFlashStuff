package §0!-§
{
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class § ;§ extends §0!-§.Texture
   {
       
      
      private var §@!l§:TextureBase;
      
      private var §4!L§:int;
      
      private var §"!C§:int;
      
      private var §%R§:Boolean;
      
      private var §2!'§:Boolean;
      
      private var §4!+§:Boolean;
      
      private var §?!%§:Object;
      
      private var §1!X§:Boolean = false;
      
      public function § ;§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         super();
         this.§@!l§ = param1;
         if(!_loc8_)
         {
            this.§4!L§ = param2;
            this.§"!C§ = param3;
         }
         this.§%R§ = param4;
         this.§2!'§ = param5;
         if(!(_loc8_ && param3))
         {
            this.§4!+§ = param6;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§@!l§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr39);
               }
               §§goto(addr54);
            }
            §§goto(addr49);
         }
         addr39:
         this.§@!l§.dispose();
         if(!(_loc1_ && _loc1_))
         {
            addr49:
            this.§"6§(null);
            if(_loc2_)
            {
               addr54:
               super.dispose();
            }
         }
      }
      
      public function §"6§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§?!%§ == null);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_ || this)
                     {
                        §§push(param1 == null);
                        if(_loc3_)
                        {
                           addr63:
                           if(!§§pop())
                           {
                              §§push(§7j§.§else§);
                              if(_loc3_)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 if(!_loc2_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§=!S§);
                                    §§goto(addr87);
                                 }
                                 §§pop().removeEventListener(§§pop(),this.§=!S§);
                                 if(!_loc3_)
                                 {
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr80);
                           }
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr87);
                  }
               }
            }
            §§goto(addr63);
         }
         addr87:
         if(param1 == null)
         {
            addr80:
            §§push(§7j§.§else§);
            §§push(Event.CONTEXT3D_CREATE);
         }
         this.§?!%§ = param1;
      }
      
      private function §=!S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
            this.§1!X§ = true;
            if(_loc3_)
            {
               §§goto(addr24);
            }
            §§goto(addr29);
         }
         addr24:
         if(param1 != null)
         {
            if(_loc3_)
            {
               addr29:
               this.§"6§(param1);
            }
         }
      }
      
      public function get §!q§() : Boolean
      {
         return this.§4!+§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!i§(param1);
         }
         return this.§@!l§;
      }
      
      override public function get root() : §0!-§.Texture
      {
         return this;
      }
      
      private function §!i§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!(_loc7_ && param1))
         {
            if(!this.§1!X§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§?!%§ as BitmapData;
         var _loc3_:ByteArray = this.§?!%§ as ByteArray;
         if(_loc6_ || _loc3_)
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  §§goto(addr58);
               }
               else
               {
                  addr108:
                  addr125:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(_loc6_)
                  {
                     addr124:
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  _loc4_ = param1.createTexture(this.§4!L§,this.§"!C§,_loc5_,this.§4!+§);
                  if(_loc6_ || _loc3_)
                  {
                     §0!-§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
            }
            else if(_loc3_)
            {
               if(!_loc7_)
               {
                  if(_loc3_[6] == 2)
                  {
                     if(_loc7_ && this)
                     {
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr108);
            }
            §§goto(addr158);
         }
         addr58:
         _loc4_ = param1.createTexture(this.§4!L§,this.§"!C§,Context3DTextureFormat.BGRA,this.§4!+§);
         if(!_loc7_)
         {
            §0!-§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§%R§);
            if(!_loc7_)
            {
               addr158:
               this.§@!l§ = _loc4_;
               if(_loc6_ || param1)
               {
               }
               §§goto(addr171);
            }
            this.§1!X§ = false;
         }
         addr171:
      }
      
      override public function get width() : Number
      {
         return this.§4!L§;
      }
      
      override public function get height() : Number
      {
         return this.§"!C§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%R§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2!'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§?!%§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
