package §_-z4§
{
   import §_-0Ea§.§_-AY§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §_-Y6§ extends §_-z4§.Texture
   {
       
      
      private var §_-yh§:TextureBase;
      
      private var §_-ux§:int;
      
      private var §_-09f§:int;
      
      private var §_-AE§:Boolean;
      
      private var §_-XA§:Boolean;
      
      private var §_-8r§:Boolean;
      
      private var §_-WB§:Object;
      
      private var §_-rB§:Boolean = false;
      
      public function §_-Y6§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§_-yh§ = param1;
            while(true)
            {
               this.§_-ux§ = param2;
               loop2:
               while(_loc7_)
               {
                  this.§_-09f§ = param3;
                  while(_loc7_)
                  {
                     this.§_-AE§ = param4;
                     while(!(_loc8_ && param2))
                     {
                        this.§_-XA§ = param5;
                        while(_loc7_ || this)
                        {
                           this.§_-8r§ = param6;
                           if(_loc7_ || param1)
                           {
                              if(!_loc8_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§_-yh§)
            {
               while(true)
               {
                  this.§_-yh§.dispose();
                  addr75:
                  while(true)
                  {
                  }
               }
               addr72:
            }
            while(true)
            {
               this.§_-32§(null);
               §§goto(addr75);
            }
         }
         while(true)
         {
            super.dispose();
            if(_loc1_ && this)
            {
               continue;
            }
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr72);
            }
            §§goto(addr75);
         }
      }
      
      public function §_-32§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-WB§ == null);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     addr133:
                     loop6:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc3_ || param1)
                        {
                           if(_loc2_)
                           {
                              continue loop8;
                           }
                           addr106:
                           §§push(!§§pop());
                           while(true)
                           {
                              break loop6;
                              §§goto(addr106);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(_loc3_)
                           {
                              §§push(§_-AY§.§_-un§);
                              while(true)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 addr115:
                                 addr51:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§_-Hs§);
                                    addr118:
                                    while(true)
                                    {
                                    }
                                 }
                                 §§push(§_-AY§.§_-un§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(Event.CONTEXT3D_CREATE);
                                    if(_loc2_ && this)
                                    {
                                       §§goto(addr115);
                                    }
                                    §§pop().removeEventListener(§§pop(),this.§_-Hs§);
                                    do
                                    {
                                       this.§_-WB§ = param1;
                                    }
                                    while(!_loc3_);
                                    
                                    return;
                                    addr82:
                                 }
                              }
                           }
                           §§goto(addr133);
                           addr109:
                        }
                        for(; param1 == null; §§goto(addr118))
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc3_ || param1)
                              {
                                 §§goto(addr51);
                              }
                              else
                              {
                                 §§goto(addr109);
                              }
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr24);
                     }
                  }
                  addr132:
               }
               §§goto(addr107);
            }
            §§goto(addr132);
         }
         §§goto(addr82);
      }
      
      private function §_-Hs§(param1:Event) : void
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-rB§ = true;
            while(param1 != null)
            {
               if(!_loc3_)
               {
                  break;
               }
               addr50:
               if(_loc2_ && this)
               {
                  continue;
               }
               addr47:
               this.§_-32§(param1);
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function get §_-ww§() : Boolean
      {
         return this.§_-8r§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-ma§(param1);
         }
         return this.§_-yh§;
      }
      
      override public function get root() : §_-z4§.Texture
      {
         return this;
      }
      
      private function §_-ma§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!(_loc6_ && param1))
         {
            if(!this.§_-rB§)
            {
               if(_loc7_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§_-WB§ as BitmapData;
         var _loc3_:ByteArray = this.§_-WB§ as ByteArray;
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(_loc7_ || _loc2_)
               {
                  addr64:
                  _loc4_ = param1.createTexture(this.§_-ux§,this.§_-09f§,Context3DTextureFormat.BGRA,this.§_-8r§);
                  if(!(_loc6_ && this))
                  {
                     §_-z4§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§_-AE§);
                     if(_loc7_ || param1)
                     {
                        addr179:
                        this.§_-yh§ = _loc4_;
                        if(_loc7_)
                        {
                           addr184:
                           this.§_-rB§ = false;
                        }
                        return;
                        addr106:
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr106);
               }
               else
               {
                  addr116:
                  if(_loc3_[6] == 2)
                  {
                     if(!(_loc6_ && this))
                     {
                        addr129:
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(_loc6_ && this)
                        {
                        }
                        addr161:
                        _loc5_ = §§pop();
                        addr160:
                     }
                     _loc4_ = param1.createTexture(this.§_-ux§,this.§_-09f§,_loc5_,this.§_-8r§);
                     if(_loc7_)
                     {
                        §_-z4§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                     §§goto(addr179);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc7_ || _loc2_)
                     {
                        §§goto(addr160);
                     }
                  }
                  §§goto(addr161);
               }
            }
            else if(_loc3_)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr116);
               }
               §§goto(addr129);
            }
            §§goto(addr179);
         }
         §§goto(addr64);
      }
      
      override public function get width() : Number
      {
         return this.§_-ux§;
      }
      
      override public function get height() : Number
      {
         return this.§_-09f§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-AE§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-XA§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§_-WB§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
