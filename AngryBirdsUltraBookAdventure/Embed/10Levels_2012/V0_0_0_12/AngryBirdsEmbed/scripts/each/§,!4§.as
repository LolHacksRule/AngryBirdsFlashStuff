package each
{
   import §&p§.§'_§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §,!4§ extends each.Texture
   {
       
      
      private var §+5§:TextureBase;
      
      private var §9p§:int;
      
      private var §9`§:int;
      
      private var §+N§:Boolean;
      
      private var §2"§:Boolean;
      
      private var §0Q§:Boolean;
      
      private var §^<§:Object;
      
      private var §[!,§:Boolean = false;
      
      public function §,!4§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(!_loc7_)
         {
            this.§+5§ = param1;
            if(_loc8_ || param1)
            {
               this.§9p§ = param2;
               if(!_loc7_)
               {
                  §§goto(addr56);
               }
               §§goto(addr66);
            }
            §§goto(addr56);
         }
         addr56:
         this.§9`§ = param3;
         if(!_loc7_)
         {
            this.§+N§ = param4;
            if(!_loc7_)
            {
               addr66:
               this.§2"§ = param5;
            }
         }
         this.§0Q§ = param6;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§+5§)
            {
               if(!(_loc1_ && this))
               {
                  this.§+5§.dispose();
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr54);
            }
         }
         addr49:
         this.§0e§(null);
         if(_loc2_)
         {
            addr54:
            super.dispose();
         }
      }
      
      public function §0e§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§^<§ == null);
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
                                 §§push(§'_§.§17§);
                                 if(!_loc2_)
                                 {
                                    §§push(Event.CONTEXT3D_CREATE);
                                    if(_loc3_)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§-%§);
                                       if(!_loc2_)
                                       {
                                          addr94:
                                          if(param1 == null)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr103:
                                                §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
                                                addr106:
                                                this.§^<§ = param1;
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
      
      private function §-%§(param1:Event) : void
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
            this.§[!,§ = true;
            if(!(_loc3_ && param1))
            {
               if(param1 != null)
               {
                  if(!_loc3_)
                  {
                     this.§0e§(param1);
                  }
               }
            }
         }
      }
      
      public function get §+3§() : Boolean
      {
         return this.§0Q§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0!4§(param1);
         }
         return this.§+5§;
      }
      
      override public function get root() : each.Texture
      {
         return this;
      }
      
      private function §0!4§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_)
         {
            if(!this.§[!,§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§^<§ as BitmapData;
         var _loc3_:ByteArray = this.§^<§ as ByteArray;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  _loc4_ = param1.createTexture(this.§9p§,this.§9`§,Context3DTextureFormat.BGRA,this.§0Q§);
                  if(!_loc7_)
                  {
                     each.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+N§);
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
                  _loc4_ = param1.createTexture(this.§9p§,this.§9`§,_loc5_,this.§0Q§);
                  if(!_loc7_)
                  {
                     each.Texture.uploadAtfData(_loc4_,_loc3_);
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
            this.§+5§ = _loc4_;
            if(!(_loc7_ && _loc2_))
            {
               addr163:
               this.§[!,§ = false;
            }
            return;
         }
         §§goto(addr95);
      }
      
      override public function get width() : Number
      {
         return this.§9p§;
      }
      
      override public function get height() : Number
      {
         return this.§9`§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+N§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2"§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^<§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
