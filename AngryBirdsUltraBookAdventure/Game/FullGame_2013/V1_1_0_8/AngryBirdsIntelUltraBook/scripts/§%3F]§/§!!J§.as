package §?]§
{
   import §2m§.§<!?§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §!!J§ extends §?]§.Texture
   {
       
      
      private var §8" §:TextureBase;
      
      private var §3!8§:int;
      
      private var §0!Q§:int;
      
      private var §"!Z§:Boolean;
      
      private var §@!P§:Boolean;
      
      private var §try §:Boolean;
      
      private var §9%§:Object;
      
      private var §?!_§:Boolean = false;
      
      public function §!!J§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§8" § = param1;
               loop1:
               while(!(_loc8_ && param2))
               {
                  this.§3!8§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§0!Q§ = param3;
                     while(true)
                     {
                        this.§"!Z§ = param4;
                        loop4:
                        while(_loc7_)
                        {
                           this.§@!P§ = param5;
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§8" §)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§8" §.dispose();
               }
               while(true)
               {
               }
               addr59:
            }
            loop1:
            while(true)
            {
               this.§7!k§(null);
               do
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  continue loop1;
               }
               while(super.dispose(), !_loc1_);
               
            }
         }
      }
      
      public function §7!k§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§9%§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr148:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        addr122:
                        if(!_loc3_)
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
                     for(; !(_loc2_ && _loc2_); loop9:
                     for(; _loc3_ || param1; while(true)
                     {
                        this.§9%§ = param1;
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        continue loop9;
                     },return)
                     {
                        while(true)
                        {
                           continue loop9;
                        }
                     })
                     {
                        §§push(§<!?§.§,=§);
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr137:
                           addr59:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§%!y§);
                              addr140:
                              while(true)
                              {
                              }
                           }
                           §§push(§<!?§.§,=§);
                           if(_loc3_ || param1)
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              if(!(_loc3_ || _loc2_))
                              {
                                 §§goto(addr137);
                              }
                              §§pop().removeEventListener(§§pop(),this.§%!y§);
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr148);
                  }
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr29);
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private function §%!y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
            this.§?!_§ = true;
         }
         while(param1 != null)
         {
            if(_loc2_ || _loc2_)
            {
               this.§7!k§(param1);
            }
            if(_loc2_ || _loc2_)
            {
               break;
            }
         }
      }
      
      public function get §6!]§() : Boolean
      {
         return this.§try §;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@!I§(param1);
         }
         return this.§8" §;
      }
      
      override public function get root() : §?]§.Texture
      {
         return this;
      }
      
      private function §@!I§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc7_ || _loc2_)
         {
            if(!this.§?!_§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§9%§ as BitmapData;
         var _loc3_:ByteArray = this.§9%§ as ByteArray;
         if(!_loc6_)
         {
            if(_loc2_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  _loc4_ = param1.createTexture(this.§3!8§,this.§0!Q§,Context3DTextureFormat.BGRA,this.§try §);
                  if(!_loc6_)
                  {
                     §?]§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§"!Z§);
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr169);
               }
               else
               {
                  _loc4_ = param1.createTexture(this.§3!8§,this.§0!Q§,_loc5_,this.§try §);
                  addr132:
                  if(!(_loc6_ && _loc3_))
                  {
                     §?]§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
            }
            else if(_loc3_)
            {
               if(_loc7_)
               {
                  addr101:
                  if(_loc3_[6] == 2)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(_loc7_)
                        {
                           addr130:
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr132);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc7_ || _loc3_)
                     {
                        §§goto(addr130);
                     }
                  }
                  _loc5_ = §§pop();
               }
               §§goto(addr132);
            }
            addr164:
            this.§8" § = _loc4_;
            if(_loc7_)
            {
               addr169:
               this.§?!_§ = false;
            }
            return;
         }
         §§goto(addr101);
      }
      
      override public function get width() : Number
      {
         return this.§3!8§;
      }
      
      override public function get height() : Number
      {
         return this.§0!Q§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§"!Z§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@!P§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9%§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
