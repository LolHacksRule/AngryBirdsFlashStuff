package §!!9§
{
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §!!c§ extends §!!9§.Texture
   {
       
      
      private var §1!3§:TextureBase;
      
      private var §>!D§:int;
      
      private var §7!3§:int;
      
      private var §+!d§:Boolean;
      
      private var §5N§:Boolean;
      
      private var §7![§:Boolean;
      
      private var §0A§:Object;
      
      private var §@!e§:Boolean = false;
      
      public function §!!c§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1!3§ = param1;
               loop1:
               while(true)
               {
                  this.§>!D§ = param2;
                  while(true)
                  {
                     this.§7!3§ = param3;
                     loop3:
                     for(; _loc7_; if(!(_loc8_ && param1))
                     {
                        continue loop0;
                     })
                     {
                        this.§+!d§ = param4;
                        loop4:
                        while(true)
                        {
                           this.§5N§ = param5;
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr77:
                              this.§7![§ = param6;
                              if(!(_loc8_ && param2))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(!(_loc7_ || param1))
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§1!3§)
            {
               if(!(_loc1_ && this))
               {
                  this.§1!3§.dispose();
               }
               while(true)
               {
                  §§goto(addr57);
               }
            }
            addr57:
            §§goto(addr56);
         }
         addr56:
         while(true)
         {
            this.§`!r§(null);
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
            if(_loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §`!r§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§0A§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr132:
                     do
                     {
                        §§push(param1 == null);
                        if(!(_loc3_ && param1))
                        {
                           continue loop0;
                        }
                        addr106:
                     }
                     while(!_loc3_);
                     
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(§,!]§.§!9§);
                           addr119:
                           while(true)
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              addr121:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§,!f§);
                              }
                           }
                        }
                        addr117:
                     }
                     while(true)
                     {
                     }
                     addr124:
                  }
                  loop5:
                  while(true)
                  {
                     if(param1 == null)
                     {
                        while(true)
                        {
                           §§push(§,!]§.§!9§);
                           if(_loc2_)
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              if(!_loc2_)
                              {
                                 break;
                                 addr67:
                              }
                              §§pop().removeEventListener(§§pop(),this.§,!f§);
                              while(_loc2_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr132);
                              }
                              continue loop5;
                           }
                           §§goto(addr119);
                           addr34:
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           return;
                           addr41:
                        }
                        §§goto(addr121);
                     }
                     while(true)
                     {
                        this.§0A§ = param1;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr34);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr41);
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      private function §,!f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§@!e§ = true;
            while(param1 != null)
            {
               if(_loc3_)
               {
                  break;
               }
               addr54:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               addr51:
               this.§`!r§(param1);
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function get §,!R§() : Boolean
      {
         return this.§7![§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!L§(param1);
         }
         return this.§1!3§;
      }
      
      override public function get root() : §!!9§.Texture
      {
         return this;
      }
      
      private function §+!L§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_)
         {
            if(!this.§@!e§)
            {
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:BitmapData = this.§0A§ as BitmapData;
            var _loc3_:ByteArray = this.§0A§ as ByteArray;
            if(!_loc7_)
            {
               if(_loc2_)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc4_ = param1.createTexture(this.§>!D§,this.§7!3§,Context3DTextureFormat.BGRA,this.§7![§);
                     if(!(_loc7_ && _loc2_))
                     {
                        §!!9§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+!d§);
                        if(!(_loc7_ && param1))
                        {
                           addr163:
                           this.§1!3§ = _loc4_;
                           if(_loc6_)
                           {
                              this.§@!e§ = false;
                           }
                           addr100:
                        }
                        return;
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     addr146:
                     _loc4_ = param1.createTexture(this.§>!D§,this.§7!3§,_loc5_,this.§7![§);
                     if(_loc6_)
                     {
                        §!!9§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                  }
               }
               else if(_loc3_)
               {
                  if(!_loc7_)
                  {
                     if(_loc3_[6] == 2)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           addr118:
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc6_ || _loc2_)
                           {
                              addr144:
                              §§push(§§pop());
                           }
                        }
                        §§goto(addr146);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!_loc7_)
                        {
                           §§goto(addr144);
                        }
                     }
                     _loc5_ = §§pop();
                     §§goto(addr146);
                  }
                  §§goto(addr118);
               }
               §§goto(addr163);
            }
            §§goto(addr146);
         }
         addr34:
      }
      
      override public function get width() : Number
      {
         return this.§>!D§;
      }
      
      override public function get height() : Number
      {
         return this.§7!3§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5N§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0A§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
