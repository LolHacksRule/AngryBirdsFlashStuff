package §^!+§
{
   import §<&§.§^b§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+!I§ extends §^!+§.Texture
   {
       
      
      private var §+!C§:TextureBase;
      
      private var §'O§:int;
      
      private var §!!A§:int;
      
      private var §4!U§:Boolean;
      
      private var §<!h§:Boolean;
      
      private var §=!]§:Boolean;
      
      private var §++§:Object;
      
      private var §9!1§:Boolean = false;
      
      public function §+!I§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               this.§+!C§ = param1;
               loop1:
               while(true)
               {
                  this.§'O§ = param2;
                  addr95:
                  while(true)
                  {
                     this.§!!A§ = param3;
                     continue loop1;
                  }
               }
               if(_loc7_)
               {
                  continue;
               }
               §§goto(addr47);
            }
         }
         §§goto(addr78);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§+!C§)
            {
               while(true)
               {
                  this.§+!C§.dispose();
                  addr79:
                  while(true)
                  {
                  }
               }
               addr76:
            }
            while(true)
            {
               this.§;x§(null);
               addr63:
               while(_loc1_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr76);
               }
               §§goto(addr79);
            }
         }
         while(true)
         {
            super.dispose();
            if(_loc1_ || this)
            {
               break;
            }
            §§goto(addr63);
         }
      }
      
      public function §;x§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§++§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr138:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!(_loc2_ && this))
                        {
                           continue loop0;
                        }
                        addr112:
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§^b§.§9E§);
                        addr118:
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr120:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§!!X§);
                              addr123:
                              while(!(_loc2_ && this))
                              {
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     addr116:
                  }
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(_loc3_ || this)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§^b§.§9E§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 if(_loc3_ || this)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§!!X§);
                                    loop8:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§++§ = param1;
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       return;
                                    }
                                    addr85:
                                 }
                                 else
                                 {
                                    §§goto(addr120);
                                 }
                                 §§goto(addr123);
                              }
                              else
                              {
                                 §§goto(addr118);
                              }
                           }
                           else
                           {
                              §§goto(addr116);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr29);
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      private function §!!X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
            this.§9!1§ = true;
            while(param1 != null)
            {
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     this.§;x§(param1);
                     addr44:
                     break;
                  }
                  continue;
               }
               §§goto(addr44);
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get §]!o§() : Boolean
      {
         return this.§=!]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§9!k§(param1);
         }
         return this.§+!C§;
      }
      
      override public function get root() : §^!+§.Texture
      {
         return this;
      }
      
      private function §9!k§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_)
         {
            if(!this.§9!1§)
            {
               if(_loc6_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§++§ as BitmapData;
         var _loc3_:ByteArray = this.§++§ as ByteArray;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  _loc4_ = param1.createTexture(this.§'O§,this.§!!A§,Context3DTextureFormat.BGRA,this.§=!]§);
                  §§goto(addr53);
               }
               else
               {
                  _loc4_ = param1.createTexture(this.§'O§,this.§!!A§,_loc5_,this.§=!]§);
                  addr111:
                  if(!_loc7_)
                  {
                     §^!+§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
            }
            else if(_loc3_)
            {
               if(_loc6_)
               {
                  if(_loc3_[6] == 2)
                  {
                     if(_loc6_)
                     {
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(_loc7_)
                        {
                        }
                        addr109:
                        §§push(§§pop());
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!_loc7_)
                     {
                        §§goto(addr109);
                     }
                  }
                  _loc5_ = §§pop();
               }
               §§goto(addr111);
            }
            §§goto(addr138);
         }
         addr53:
         if(_loc6_)
         {
            §^!+§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§4!U§);
            if(_loc6_)
            {
               addr138:
               this.§+!C§ = _loc4_;
               if(!(_loc7_ && param1))
               {
                  this.§9!1§ = false;
               }
            }
         }
      }
      
      override public function get width() : Number
      {
         return this.§'O§;
      }
      
      override public function get height() : Number
      {
         return this.§!!A§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4!U§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!h§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§++§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
