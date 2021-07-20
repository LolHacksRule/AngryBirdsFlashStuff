package §<5§
{
   import §"a§.§!"J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §1!1§ extends §<5§.Texture
   {
       
      
      private var §9"!§:TextureBase;
      
      private var §,>§:int;
      
      private var §`;§:int;
      
      private var §9-§:Boolean;
      
      private var §8$§:Boolean;
      
      private var §?"T§:Boolean;
      
      private var §+]§:Object;
      
      private var §-!m§:Boolean = false;
      
      public function §1!1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§9"!§ = param1;
               while(true)
               {
                  this.§,>§ = param2;
                  continue loop0;
                  while(!(_loc8_ && param3))
                  {
                     this.§8$§ = param5;
                     loop6:
                     for(; _loc7_ || param3; this.§?"T§ = param6,if(!_loc8_)
                     {
                        if(_loc7_)
                        {
                           return;
                           addr36:
                        }
                        continue loop0;
                     })
                     {
                        addr58:
                        if(_loc7_ || param3)
                        {
                           continue;
                        }
                        addr92:
                        while(true)
                        {
                           this.§9-§ = param4;
                           break loop6;
                           §§goto(addr58);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§`;§ = param3;
            §§goto(addr92);
         }
         §§goto(addr36);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§9"!§)
            {
               while(true)
               {
                  this.§9"!§.dispose();
                  addr74:
                  while(true)
                  {
                  }
               }
               addr71:
            }
            while(true)
            {
               this.§%!,§(null);
               §§goto(addr74);
            }
         }
         while(true)
         {
            super.dispose();
            if(!(_loc1_ || _loc1_))
            {
               continue;
            }
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr71);
            }
            §§goto(addr74);
         }
      }
      
      public function §%!,§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§+]§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc2_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(!§§pop());
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§!"J§.§1&§);
                                 addr114:
                                 while(true)
                                 {
                                    §§push(Event.CONTEXT3D_CREATE);
                                    addr116:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§?3§);
                                       addr119:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr76:
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr28);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(param1 == null)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§!"J§.§1&§);
                                    if(!_loc3_)
                                    {
                                       §§push(Event.CONTEXT3D_CREATE);
                                       if(!_loc3_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.§?3§);
                                          §§goto(addr69);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr69);
                              }
                              addr28:
                              while(true)
                              {
                                 this.§+]§ = param1;
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 addr69:
                                 while(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr76);
                                 }
                                 §§goto(addr119);
                              }
                              return;
                              §§goto(addr119);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr110);
            }
         }
         §§goto(addr83);
      }
      
      private function §?3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§-!m§ = true;
            loop0:
            for(; param1 != null; while(true)
            {
               if(!(_loc2_ && _loc3_))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§%!,§(param1);
            §§goto(addr63);
         }
      }
      
      public function get §'7§() : Boolean
      {
         return this.§?"T§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!+§(param1);
         }
         return this.§9"!§;
      }
      
      override public function get root() : §<5§.Texture
      {
         return this;
      }
      
      private function §&!+§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc6_ || this)
         {
            if(!this.§-!m§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§+]§ as BitmapData;
         var _loc3_:ByteArray = this.§+]§ as ByteArray;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  addr53:
                  _loc4_ = param1.createTexture(this.§,>§,this.§`;§,Context3DTextureFormat.BGRA,this.§?"T§);
                  if(_loc6_)
                  {
                     §<5§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§9-§);
                     if(!_loc7_)
                     {
                        addr158:
                        this.§9"!§ = _loc4_;
                        if(_loc6_ || this)
                        {
                           addr168:
                           this.§-!m§ = false;
                        }
                        return;
                        addr85:
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr85);
               }
               else
               {
                  addr95:
                  if(_loc3_[6] == 2)
                  {
                     if(_loc6_ || param1)
                     {
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(_loc6_ || param1)
                        {
                        }
                        addr130:
                        _loc5_ = §§pop();
                        addr129:
                     }
                     _loc4_ = param1.createTexture(this.§,>§,this.§`;§,_loc5_,this.§?"T§);
                     addr131:
                     if(!_loc7_)
                     {
                        §<5§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                     §§goto(addr158);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc6_ || param1)
                     {
                        §§goto(addr129);
                     }
                  }
                  §§goto(addr130);
               }
            }
            else if(_loc3_)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr95);
               }
               §§goto(addr131);
            }
            §§goto(addr158);
         }
         §§goto(addr53);
      }
      
      override public function get width() : Number
      {
         return this.§,>§;
      }
      
      override public function get height() : Number
      {
         return this.§`;§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9-§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8$§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+]§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
