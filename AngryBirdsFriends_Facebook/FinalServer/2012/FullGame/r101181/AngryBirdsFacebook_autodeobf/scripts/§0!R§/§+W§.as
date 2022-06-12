package §0!R§
{
   import §'6§.§"]§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+W§ extends §0!R§.Texture
   {
       
      
      private var §-"=§:TextureBase;
      
      private var §`w§:int;
      
      private var §%m§:int;
      
      private var §<!o§:Boolean;
      
      private var §;!n§:Boolean;
      
      private var §&!]§:Boolean;
      
      private var §>">§:Object;
      
      private var §%,§:Boolean = false;
      
      public function §+W§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§-"=§ = param1;
               addr100:
               addr49:
               while(true)
               {
                  this.§`w§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§%m§ = param3;
                     while(true)
                     {
                        this.§<!o§ = param4;
                        addr61:
                        while(!(_loc7_ && param3))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc7_ && param2))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr100);
            }
         }
         while(true)
         {
            this.§;!n§ = param5;
            §§goto(addr49);
         }
         §§goto(addr34);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§-"=§)
            {
               loop0:
               while(true)
               {
                  this.§-"=§.dispose();
                  addr79:
                  addr65:
                  while(true)
                  {
                  }
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr79);
               }
            }
            while(true)
            {
               this.§0!c§(null);
               §§goto(addr65);
               §§goto(addr79);
            }
         }
         §§goto(addr60);
      }
      
      public function §0!c§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§>">§ == null);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr127:
                     loop10:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           addr107:
                           §§push(!§§pop());
                           while(true)
                           {
                              §§goto(addr107);
                           }
                        }
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§"]§.§!X§);
                                 addr112:
                                 while(true)
                                 {
                                    §§push(Event.CONTEXT3D_CREATE);
                                    addr114:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§-""§);
                                       addr117:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr110:
                           }
                           while(true)
                           {
                              if(param1 == null)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§"]§.§!X§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(Event.CONTEXT3D_CREATE);
                                       if(_loc2_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.§-""§);
                                          loop7:
                                          for(; _loc2_ || _loc3_; while(true)
                                          {
                                             this.§>">§ = param1;
                                             if(!(_loc3_ && param1))
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          },if(!(_loc3_ && _loc2_))
                                          {
                                             break loop1;
                                          },continue loop10)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr110);
                                          }
                                          §§goto(addr117);
                                          addr79:
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr23);
                           }
                        }
                        return;
                     }
                  }
                  addr126:
               }
               §§goto(addr108);
            }
            §§goto(addr126);
         }
         §§goto(addr127);
      }
      
      private function §-""§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%,§ = true;
         }
         while(param1 != null)
         {
            if(!_loc2_)
            {
               if(_loc2_)
               {
                  continue;
               }
               this.§0!c§(param1);
            }
            break;
         }
      }
      
      public function get §0<§() : Boolean
      {
         return this.§&!]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!r§(param1);
         }
         return this.§-"=§;
      }
      
      override public function get root() : §0!R§.Texture
      {
         return this;
      }
      
      private function §3!r§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc7_ || _loc3_)
         {
            if(!this.§%,§)
            {
               if(_loc7_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§>">§ as BitmapData;
         var _loc3_:ByteArray = this.§>">§ as ByteArray;
         if(_loc7_ || param1)
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  _loc4_ = param1.createTexture(this.§`w§,this.§%m§,Context3DTextureFormat.BGRA,this.§&!]§);
                  if(!(_loc6_ && this))
                  {
                     §0!R§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<!o§);
                     if(!(_loc6_ && _loc2_))
                     {
                        addr179:
                        this.§-"=§ = _loc4_;
                        if(!(_loc6_ && _loc3_))
                        {
                           this.§%,§ = false;
                        }
                     }
                  }
                  return;
               }
               addr116:
               if(_loc3_[6] == 2)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!(_loc6_ && this))
                     {
                        addr151:
                        _loc5_ = §§pop();
                     }
                     §§goto(addr151);
                  }
                  _loc4_ = param1.createTexture(this.§`w§,this.§%m§,_loc5_,this.§&!]§);
                  addr152:
                  if(!_loc6_)
                  {
                     §0!R§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
                  §§goto(addr179);
               }
               else
               {
                  §§push(Context3DTextureFormat.BGRA);
                  if(_loc7_ || _loc2_)
                  {
                     §§goto(addr151);
                  }
               }
               §§goto(addr151);
            }
            else if(_loc3_)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr116);
               }
               §§goto(addr152);
            }
            §§goto(addr179);
         }
         §§goto(addr116);
      }
      
      override public function get width() : Number
      {
         return this.§`w§;
      }
      
      override public function get height() : Number
      {
         return this.§%m§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<!o§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;!n§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>">§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
