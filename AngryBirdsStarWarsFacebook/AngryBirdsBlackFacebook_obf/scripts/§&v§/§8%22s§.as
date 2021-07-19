package §&v§
{
   import §&#H§.§3#J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §8"s§ extends §&v§.Texture
   {
       
      
      private var §3f§:TextureBase;
      
      private var §6"?§:int;
      
      private var §[!4§:int;
      
      private var §"]§:Boolean;
      
      private var §3"$§:Boolean;
      
      private var §%!0§:Boolean;
      
      private var §%4§:Object;
      
      private var §"!]§:Boolean = false;
      
      public function §8"s§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super();
            while(true)
            {
               this.§3f§ = param1;
               loop2:
               while(_loc7_)
               {
                  this.§[!4§ = param3;
                  loop3:
                  while(true)
                  {
                     this.§"]§ = param4;
                     loop4:
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           this.§3"$§ = param5;
                           while(!_loc8_)
                           {
                              this.§%!0§ = param6;
                              if(!(_loc8_ && param2))
                              {
                                 if(!_loc8_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     addr94:
                     while(true)
                     {
                        this.§6"?§ = param2;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§3f§)
            {
               while(true)
               {
                  this.§3f§.dispose();
                  addr69:
                  while(true)
                  {
                  }
                  addr50:
                  if(!_loc2_)
                  {
                     super.dispose();
                     if(_loc2_)
                     {
                        while(!(_loc2_ && this))
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr69);
                        addr43:
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               this.§<#;§(null);
               §§goto(addr43);
               §§goto(addr69);
            }
         }
         §§goto(addr69);
      }
      
      public function §<#;§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§%4§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr137:
                     do
                     {
                        §§push(param1 == null);
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                        }
                     }
                     while(!_loc3_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§3#J§.§2!C§);
                        addr114:
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr116:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§%!b§);
                              addr129:
                              while(true)
                              {
                              }
                           }
                        }
                        addr48:
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        return;
                        addr55:
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(param1 == null)
                     {
                        loop9:
                        while(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              §§push(§3#J§.§2!C§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 if(!(_loc3_ && this))
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§%!b§);
                                    loop12:
                                    while(true)
                                    {
                                       addr28:
                                       while(true)
                                       {
                                          this.§%4§ = param1;
                                          if(_loc3_ && this)
                                          {
                                             continue loop12;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc3_ && param1)
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr48);
                                          continue loop12;
                                       }
                                       §§goto(addr114);
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §%!b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
            this.§"!]§ = true;
            while(param1 != null)
            {
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               addr60:
               if(_loc2_)
               {
                  continue;
               }
               addr57:
               this.§<#;§(param1);
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function get §[?§() : Boolean
      {
         return this.§%!0§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6#B§(param1);
         }
         return this.§3f§;
      }
      
      override public function get root() : §&v§.Texture
      {
         return this;
      }
      
      private function §6#B§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_ || this)
         {
            if(!this.§"!]§)
            {
               if(_loc6_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:BitmapData = this.§%4§ as BitmapData;
            var _loc3_:ByteArray = this.§%4§ as ByteArray;
            if(!_loc7_)
            {
               if(_loc2_)
               {
                  if(_loc6_)
                  {
                     _loc4_ = param1.createTexture(this.§6"?§,this.§[!4§,Context3DTextureFormat.BGRA,this.§%!0§);
                     if(_loc6_ || this)
                     {
                        §&v§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§"]§);
                        if(_loc6_)
                        {
                           addr153:
                           this.§3f§ = _loc4_;
                           if(!_loc7_)
                           {
                              this.§"!]§ = false;
                           }
                           addr90:
                        }
                        return;
                     }
                     §§goto(addr90);
                  }
                  else
                  {
                     addr100:
                     if(_loc3_[6] == 2)
                     {
                        addr126:
                        if(!(_loc7_ && _loc3_))
                        {
                           addr113:
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc7_)
                           {
                           }
                           addr124:
                           §§push(§§pop());
                        }
                        _loc4_ = param1.createTexture(this.§6"?§,this.§[!4§,_loc5_,this.§%!0§);
                        if(!_loc7_)
                        {
                           §&v§.Texture.uploadAtfData(_loc4_,_loc3_);
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(_loc6_)
                        {
                           §§goto(addr124);
                        }
                     }
                     _loc5_ = §§pop();
                     §§goto(addr126);
                  }
               }
               else if(_loc3_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §§goto(addr100);
                  }
                  §§goto(addr113);
               }
               §§goto(addr153);
            }
            §§goto(addr126);
         }
         addr34:
      }
      
      override public function get width() : Number
      {
         return this.§6"?§;
      }
      
      override public function get height() : Number
      {
         return this.§[!4§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§"]§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3"$§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%4§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
