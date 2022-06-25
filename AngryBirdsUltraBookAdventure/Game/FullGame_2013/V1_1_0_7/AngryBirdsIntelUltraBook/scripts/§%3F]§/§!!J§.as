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
         if(_loc7_ || param3)
         {
            super();
         }
         while(true)
         {
            this.§8" § = param1;
            loop1:
            while(!_loc8_)
            {
               this.§3!8§ = param2;
               loop2:
               while(true)
               {
                  this.§0!Q§ = param3;
                  loop3:
                  while(true)
                  {
                     this.§"!Z§ = param4;
                     while(true)
                     {
                        if(_loc7_ || param3)
                        {
                           if(_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              this.§@!P§ = param5;
                              while(_loc7_)
                              {
                                 this.§try § = param6;
                                 if(_loc7_)
                                 {
                                    return;
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§8" §)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§8" §.dispose();
               }
               while(true)
               {
                  §§goto(addr63);
               }
               addr84:
            }
            while(true)
            {
               this.§7!k§(null);
               addr63:
               addr58:
               do
               {
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(super.dispose(), !(_loc1_ || this));
               
               return;
               §§goto(addr84);
            }
         }
         §§goto(addr58);
      }
      
      public function §7!k§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§9%§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(!(_loc3_ && param1))
                           {
                              §§push(§<!?§.§,=§);
                              while(true)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 addr146:
                                 addr51:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§%!y§);
                                    addr149:
                                    while(true)
                                    {
                                    }
                                 }
                                 §§push(§<!?§.§,=§);
                                 if(!(_loc2_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(Event.CONTEXT3D_CREATE);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§%!y§);
                                    loop9:
                                    while(_loc2_ || this)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          while(true)
                                          {
                                             this.§9%§ = param1;
                                             if(_loc2_ || _loc2_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          return;
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr149);
                                    addr82:
                                 }
                                 §§goto(addr146);
                              }
                           }
                           while(true)
                           {
                              §§push(param1 == null);
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           addr157:
                        }
                        while(true)
                        {
                           if(param1 == null)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr51);
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr28);
                           §§goto(addr149);
                        }
                     }
                  }
                  addr133:
               }
               §§goto(addr156);
            }
         }
         §§goto(addr157);
      }
      
      private function §%!y§(param1:Event) : void
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!_§ = true;
            loop0:
            while(param1 != null)
            {
               if(!(_loc2_ && param1))
               {
                  while(true)
                  {
                     this.§7!k§(param1);
                  }
                  addr45:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get §6!]§() : Boolean
      {
         return this.§try §;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         if(_loc7_)
         {
            if(!this.§?!_§)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:BitmapData = this.§9%§ as BitmapData;
            var _loc3_:ByteArray = this.§9%§ as ByteArray;
            if(!_loc6_)
            {
               if(_loc2_)
               {
                  if(_loc7_)
                  {
                     _loc4_ = param1.createTexture(this.§3!8§,this.§0!Q§,Context3DTextureFormat.BGRA,this.§try §);
                     if(_loc7_ || param1)
                     {
                        §?]§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§"!Z§);
                        if(_loc7_)
                        {
                           addr159:
                           this.§8" § = _loc4_;
                           if(_loc6_ && param1)
                           {
                           }
                           §§goto(addr172);
                        }
                        this.§?!_§ = false;
                     }
                     addr172:
                     return;
                  }
                  _loc4_ = param1.createTexture(this.§3!8§,this.§0!Q§,_loc5_,this.§try §);
                  addr127:
                  if(_loc7_ || _loc2_)
                  {
                     §?]§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
               else if(_loc3_)
               {
                  if(!_loc6_)
                  {
                     if(_loc3_[6] == 2)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           addr109:
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc6_ && _loc3_)
                           {
                           }
                           addr125:
                           §§push(§§pop());
                        }
                        §§goto(addr127);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!_loc6_)
                        {
                           §§goto(addr125);
                        }
                     }
                     _loc5_ = §§pop();
                     §§goto(addr127);
                  }
                  §§goto(addr109);
               }
               §§goto(addr159);
            }
            §§goto(addr127);
         }
         addr35:
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
