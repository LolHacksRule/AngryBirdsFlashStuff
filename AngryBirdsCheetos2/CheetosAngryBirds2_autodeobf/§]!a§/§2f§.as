package §]!a§
{
   import §6;§.§%[§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §2f§ extends §]!a§.Texture
   {
       
      
      private var §9f§:TextureBase;
      
      private var §]>§:int;
      
      private var §7w§:int;
      
      private var §+!h§:Boolean;
      
      private var §@!,§:Boolean;
      
      private var §<B§:Boolean;
      
      private var §0!I§:Object;
      
      private var §-&§:Boolean = false;
      
      public function §2f§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§9f§ = param1;
               loop1:
               while(true)
               {
                  this.§]>§ = param2;
                  while(true)
                  {
                     this.§7w§ = param3;
                     loop5:
                     while(!(_loc7_ && this))
                     {
                        if(!_loc7_)
                        {
                           this.§<B§ = param6;
                           if(_loc7_ && param2)
                           {
                              continue;
                           }
                           if(_loc8_)
                           {
                              addr37:
                              if(!_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§+!h§ = param4;
                                    addr70:
                                    while(true)
                                    {
                                       this.§@!,§ = param5;
                                       continue loop5;
                                    }
                                    §§goto(addr37);
                                 }
                                 addr75:
                              }
                              return;
                           }
                           §§goto(addr70);
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§9f§)
            {
               while(true)
               {
                  this.§9f§.dispose();
                  addr74:
                  while(true)
                  {
                  }
                  addr50:
                  if(_loc1_ || _loc1_)
                  {
                     super.dispose();
                     if(!_loc1_)
                     {
                        while(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr74);
                        addr43:
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               this.§%!2§(null);
               §§goto(addr43);
               §§goto(addr74);
            }
         }
         §§goto(addr74);
      }
      
      public function §%!2§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§0!I§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr138:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        addr102:
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(_loc3_ || param1)
                     {
                        §§push(§%[§.§`1§);
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr117:
                           addr54:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§&!S§);
                              addr130:
                              while(true)
                              {
                              }
                           }
                           §§push(§%[§.§`1§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              if(_loc2_ && _loc3_)
                              {
                                 §§goto(addr117);
                              }
                              §§pop().removeEventListener(§§pop(),this.§&!S§);
                              loop9:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§0!I§ = param1;
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop9;
                                 }
                                 return;
                              }
                              continue loop4;
                              addr85:
                           }
                        }
                     }
                     §§goto(addr138);
                  }
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(_loc3_ || param1)
                        {
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr29);
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      private function §&!S§(param1:Event) : void
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
         if(_loc3_ || param1)
         {
            this.§-&§ = true;
         }
         while(param1 != null)
         {
            if(!(_loc3_ || _loc3_))
            {
               break;
            }
            addr65:
            if(!_loc3_)
            {
               continue;
            }
            this.§%!2§(param1);
            §§goto(addr65);
         }
      }
      
      public function get §8l§() : Boolean
      {
         return this.§<B§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6x§(param1);
         }
         return this.§9f§;
      }
      
      override public function get root() : §]!a§.Texture
      {
         return this;
      }
      
      private function §6x§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc6_)
         {
            if(!this.§-&§)
            {
               if(_loc6_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:BitmapData = this.§0!I§ as BitmapData;
            var _loc3_:ByteArray = this.§0!I§ as ByteArray;
            if(_loc6_ || param1)
            {
               if(_loc2_)
               {
                  if(_loc6_)
                  {
                     addr53:
                     _loc4_ = param1.createTexture(this.§]>§,this.§7w§,Context3DTextureFormat.BGRA,this.§<B§);
                     if(!_loc7_)
                     {
                        §]!a§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+!h§);
                        if(!_loc7_)
                        {
                           addr138:
                           this.§9f§ = _loc4_;
                           if(_loc6_ || param1)
                           {
                              addr158:
                              this.§-&§ = false;
                           }
                           return;
                           addr85:
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr85);
                  }
                  else
                  {
                     addr90:
                     if(_loc3_[6] == 2)
                     {
                        if(!(_loc7_ && param1))
                        {
                           addr103:
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc7_)
                           {
                           }
                           addr115:
                           _loc5_ = §§pop();
                           addr114:
                        }
                        _loc4_ = param1.createTexture(this.§]>§,this.§7w§,_loc5_,this.§<B§);
                        if(_loc6_ || this)
                        {
                           §]!a§.Texture.uploadAtfData(_loc4_,_loc3_);
                        }
                        §§goto(addr138);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!_loc7_)
                        {
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr115);
                  }
               }
               else if(_loc3_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr103);
               }
               §§goto(addr138);
            }
            §§goto(addr53);
         }
         addr29:
      }
      
      override public function get width() : Number
      {
         return this.§]>§;
      }
      
      override public function get height() : Number
      {
         return this.§7w§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!h§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@!,§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0!I§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
