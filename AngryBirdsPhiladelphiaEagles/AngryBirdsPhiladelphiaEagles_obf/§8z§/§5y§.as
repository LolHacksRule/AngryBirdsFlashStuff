package §8z§
{
   import §5Z§.§[Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §5y§ extends §8z§.Texture
   {
       
      
      private var §9!2§:TextureBase;
      
      private var §6! §:int;
      
      private var §@g§:int;
      
      private var §^d§:Boolean;
      
      private var §7o§:Boolean;
      
      private var §?G§:Boolean;
      
      private var §7A§:Object;
      
      private var § ;§:Boolean = false;
      
      public function §5y§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         this.§9!2§ = param1;
         this.§6! § = param2;
         this.§@g§ = param3;
         while(true)
         {
            this.§^d§ = param4;
            this.§7o§ = param5;
            while(!_loc7_)
            {
               this.§?G§ = param6;
               if(_loc8_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§9!2§)
            {
               while(true)
               {
                  this.§9!2§.dispose();
                  addr75:
                  while(true)
                  {
                  }
               }
               addr72:
            }
            loop2:
            while(true)
            {
               this.§--§(null);
               while(_loc2_)
               {
                  super.dispose();
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     break loop2;
                  }
                  §§goto(addr72);
               }
               §§goto(addr75);
            }
         }
      }
      
      public function §--§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§7A§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§push(§[Z§.§%m§);
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr94:
                           do
                           {
                              §§pop().addEventListener(§§pop(),this.§]!$§);
                           }
                           while(!_loc2_);
                           
                           loop2:
                           while(true)
                           {
                              §§push(param1 == null);
                              if(!_loc2_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              addr106:
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        addr92:
                     }
                     while(true)
                     {
                        if(param1 == null)
                        {
                           while(true)
                           {
                              §§push(§[Z§.§%m§);
                              if(_loc3_)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§pop().removeEventListener(§§pop(),this.§]!$§);
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                           }
                           §§goto(addr94);
                           addr50:
                        }
                        while(true)
                        {
                           this.§7A§ = param1;
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr35);
                     }
                  }
                  addr88:
               }
               §§goto(addr106);
            }
         }
         addr35:
      }
      
      private function §]!$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ ;§ = true;
            while(param1 != null)
            {
               if(_loc3_)
               {
                  this.§--§(param1);
               }
               if(_loc3_ || param1)
               {
                  addr55:
                  break;
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function get §,T§() : Boolean
      {
         return this.§?G§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6W§(param1);
         }
         return this.§9!2§;
      }
      
      override public function get root() : §8z§.Texture
      {
         return this;
      }
      
      private function §6W§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!_loc6_)
         {
            if(!this.§ ;§)
            {
               if(!_loc6_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:BitmapData = this.§7A§ as BitmapData;
            var _loc3_:ByteArray = this.§7A§ as ByteArray;
            if(_loc7_ || this)
            {
               if(_loc2_)
               {
                  if(_loc7_ || param1)
                  {
                     _loc4_ = param1.createTexture(this.§6! §,this.§@g§,Context3DTextureFormat.BGRA,this.§?G§);
                     if(!_loc6_)
                     {
                        §8z§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§^d§);
                        if(!_loc6_)
                        {
                           addr154:
                           this.§9!2§ = _loc4_;
                           if(_loc7_ || _loc3_)
                           {
                              addr164:
                              this.§ ;§ = false;
                           }
                        }
                        return;
                     }
                     §§goto(addr164);
                  }
                  else
                  {
                     _loc4_ = param1.createTexture(this.§6! §,this.§@g§,_loc5_,this.§?G§);
                     addr122:
                     if(!(_loc6_ && param1))
                     {
                        §8z§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                  }
               }
               else if(_loc3_)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(_loc3_[6] == 2)
                     {
                        if(!_loc6_)
                        {
                           addr109:
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc6_)
                           {
                           }
                           addr120:
                           §§push(§§pop());
                        }
                        §§goto(addr122);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!_loc6_)
                        {
                           §§goto(addr120);
                        }
                     }
                     _loc5_ = §§pop();
                  }
                  §§goto(addr122);
               }
               §§goto(addr154);
            }
            §§goto(addr109);
         }
         addr30:
      }
      
      override public function get width() : Number
      {
         return this.§6! §;
      }
      
      override public function get height() : Number
      {
         return this.§@g§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§7o§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§7A§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
