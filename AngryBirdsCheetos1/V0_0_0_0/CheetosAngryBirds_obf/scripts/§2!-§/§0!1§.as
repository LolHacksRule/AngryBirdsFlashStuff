package §2!-§
{
   import § !+§.§0Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §0!1§ extends §2!-§.Texture
   {
       
      
      private var §^'§:TextureBase;
      
      private var §?l§:int;
      
      private var §+G§:int;
      
      private var §8l§:Boolean;
      
      private var §<!8§:Boolean;
      
      private var §`z§:Boolean;
      
      private var §&!7§:Object;
      
      private var §4X§:Boolean = false;
      
      public function §0!1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.§^'§ = param1;
            }
            addr103:
         }
         loop1:
         while(true)
         {
            this.§?l§ = param2;
            loop2:
            while(true)
            {
               this.§+G§ = param3;
               addr78:
               while(_loc8_)
               {
                  this.§8l§ = param4;
                  continue loop1;
                  if(!_loc7_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr103);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^'§)
            {
               if(!_loc1_)
               {
                  addr67:
                  this.§^'§.dispose();
               }
               while(true)
               {
               }
               addr70:
            }
            while(true)
            {
               this.§=$§(null);
               while(!_loc1_)
               {
                  super.dispose();
                  if(!(_loc1_ && _loc2_))
                  {
                     return;
                  }
               }
               §§goto(addr70);
            }
         }
         §§goto(addr67);
      }
      
      public function §=$§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§&!7§ == null);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop8;
                     }
                  }
                  addr127:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(§0Z§.§4J§);
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr98:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§3!%§);
                           }
                           addr49:
                           §§push(§0Z§.§4J§);
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           §§push(Event.CONTEXT3D_CREATE);
                           if(!_loc2_)
                           {
                              §§pop().removeEventListener(§§pop(),this.§3!%§);
                              loop6:
                              while(true)
                              {
                                 addr24:
                                 while(true)
                                 {
                                    this.§&!7§ = param1;
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 if(!_loc3_)
                                 {
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          if(param1 == null)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr49);
                                          }
                                          else
                                          {
                                             §§goto(addr24);
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr101:
                                 }
                                 §§goto(addr37);
                              }
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr38);
               }
            }
            §§goto(addr127);
         }
         addr37:
      }
      
      private function §3!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
            this.§4X§ = true;
            while(param1 != null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§=$§(param1);
               }
               if(!(_loc2_ && param1))
               {
                  addr70:
                  break;
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function get §&y§() : Boolean
      {
         return this.§`z§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§=0§(param1);
         }
         return this.§^'§;
      }
      
      override public function get root() : §2!-§.Texture
      {
         return this;
      }
      
      private function §=0§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!_loc6_)
         {
            if(!this.§4X§)
            {
               if(!(_loc6_ && this))
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§&!7§ as BitmapData;
         var _loc3_:ByteArray = this.§&!7§ as ByteArray;
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  _loc4_ = param1.createTexture(this.§?l§,this.§+G§,Context3DTextureFormat.BGRA,this.§`z§);
                  if(!(_loc6_ && _loc3_))
                  {
                     §2!-§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§8l§);
                     if(_loc7_)
                     {
                        addr144:
                        this.§^'§ = _loc4_;
                        if(!_loc6_)
                        {
                           addr149:
                           this.§4X§ = false;
                        }
                     }
                     return;
                  }
                  §§goto(addr149);
               }
               else
               {
                  addr117:
                  _loc4_ = param1.createTexture(this.§?l§,this.§+G§,_loc5_,this.§`z§);
                  if(_loc7_)
                  {
                     §2!-§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
            }
            else if(_loc3_)
            {
               if(!_loc6_)
               {
                  if(_loc3_[6] == 2)
                  {
                     if(!_loc6_)
                     {
                        addr104:
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(!_loc7_)
                        {
                        }
                        addr115:
                        §§push(§§pop());
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc7_)
                     {
                        §§goto(addr115);
                     }
                  }
                  _loc5_ = §§pop();
               }
               §§goto(addr117);
            }
            §§goto(addr144);
         }
         §§goto(addr104);
      }
      
      override public function get width() : Number
      {
         return this.§?l§;
      }
      
      override public function get height() : Number
      {
         return this.§+G§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8l§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!7§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
