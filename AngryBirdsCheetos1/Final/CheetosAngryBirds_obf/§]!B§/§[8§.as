package §]!B§
{
   import §`C§.§9!'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §[8§ extends §]!B§.Texture
   {
       
      
      private var §+!C§:TextureBase;
      
      private var §^!I§:int;
      
      private var §,!X§:int;
      
      private var §<!W§:Boolean;
      
      private var §'!P§:Boolean;
      
      private var §1!A§:Boolean;
      
      private var §%p§:Object;
      
      private var §!!H§:Boolean = false;
      
      public function §[8§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super();
            while(true)
            {
               this.§+!C§ = param1;
               loop1:
               while(_loc7_ || param3)
               {
                  while(true)
                  {
                     this.§^!I§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§,!X§ = param3;
                        loop4:
                        while(!_loc8_)
                        {
                           this.§<!W§ = param4;
                           do
                           {
                              this.§'!P§ = param5;
                              while(!(_loc8_ && param3))
                              {
                                 continue loop3;
                                 this.§1!A§ = param6;
                                 if(_loc8_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr39);
                              }
                              continue loop4;
                           }
                           while(_loc8_ && param1);
                           
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+!C§)
            {
               while(true)
               {
                  this.§+!C§.dispose();
                  while(true)
                  {
                  }
               }
               addr71:
            }
            do
            {
               this.§`b§(null);
               do
               {
                  super.dispose();
               }
               while(_loc2_ && _loc1_);
               
               if(!(_loc1_ || this))
               {
                  continue;
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr71);
      }
      
      public function §`b§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%p§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§9!'§.§7!Z§);
                        addr105:
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr107:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§"$§);
                              addr120:
                              while(true)
                              {
                              }
                           }
                        }
                        loop10:
                        while(true)
                        {
                           if(_loc2_ && _loc3_)
                           {
                              continue loop4;
                           }
                           while(true)
                           {
                              addr29:
                              while(true)
                              {
                                 this.§%p§ = param1;
                                 if(!_loc3_)
                                 {
                                    continue loop10;
                                 }
                                 addr35:
                                 if(!(_loc2_ && this))
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break loop10;
                                    }
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr128);
                                 }
                                 while(true)
                                 {
                                    §§push(§9!'§.§7!Z§);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(Event.CONTEXT3D_CREATE);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().removeEventListener(§§pop(),this.§"$§);
                                       continue loop10;
                                    }
                                    §§goto(addr107);
                                    §§goto(addr35);
                                 }
                                 §§goto(addr105);
                              }
                           }
                        }
                        §§goto(addr120);
                     }
                  }
                  while(true)
                  {
                     if(param1 == null)
                     {
                        §§goto(addr66);
                     }
                     §§goto(addr29);
                     §§goto(addr120);
                  }
                  §§goto(addr49);
               }
               return;
            }
         }
         §§goto(addr89);
      }
      
      private function §"$§(param1:Event) : void
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
         if(_loc3_)
         {
            this.§!!H§ = true;
         }
         while(param1 != null)
         {
            if(_loc3_)
            {
               this.§`b§(param1);
            }
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
         }
      }
      
      public function get §]_§() : Boolean
      {
         return this.§1!A§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]y§(param1);
         }
         return this.§+!C§;
      }
      
      override public function get root() : §]!B§.Texture
      {
         return this;
      }
      
      private function §]y§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!(_loc6_ && _loc2_))
         {
            if(!this.§!!H§)
            {
               if(_loc7_ || this)
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:BitmapData = this.§%p§ as BitmapData;
            var _loc3_:ByteArray = this.§%p§ as ByteArray;
            if(_loc7_)
            {
               if(_loc2_)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_ = param1.createTexture(this.§^!I§,this.§,!X§,Context3DTextureFormat.BGRA,this.§1!A§);
                     if(!(_loc6_ && this))
                     {
                        §]!B§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<!W§);
                        if(!_loc6_)
                        {
                           addr154:
                           this.§+!C§ = _loc4_;
                           if(_loc7_)
                           {
                              addr159:
                              this.§!!H§ = false;
                           }
                           return;
                           addr101:
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr101);
                  }
                  else
                  {
                     addr127:
                     _loc4_ = param1.createTexture(this.§^!I§,this.§,!X§,_loc5_,this.§1!A§);
                     if(!_loc6_)
                     {
                        §]!B§.Texture.uploadAtfData(_loc4_,_loc3_);
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
                           addr114:
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc7_)
                           {
                              addr125:
                              §§push(§§pop());
                           }
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
                  }
                  §§goto(addr127);
               }
               §§goto(addr154);
            }
            §§goto(addr114);
         }
         addr40:
      }
      
      override public function get width() : Number
      {
         return this.§^!I§;
      }
      
      override public function get height() : Number
      {
         return this.§,!X§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<!W§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'!P§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%p§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
