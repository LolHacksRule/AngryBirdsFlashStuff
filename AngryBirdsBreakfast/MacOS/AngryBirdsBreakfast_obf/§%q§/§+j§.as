package §%q§
{
   import §`!a§.§1"&§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+j§ extends §%q§.Texture
   {
       
      
      private var §]e§:TextureBase;
      
      private var §<`§:int;
      
      private var §#!A§:int;
      
      private var §65§:Boolean;
      
      private var §>#§:Boolean;
      
      private var §?!o§:Boolean;
      
      private var §&"$§:Object;
      
      private var §8,§:Boolean = false;
      
      public function §+j§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super();
            while(true)
            {
               this.§]e§ = param1;
               while(true)
               {
                  this.§<`§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§#!A§ = param3;
                     while(true)
                     {
                        this.§65§ = param4;
                        continue loop2;
                        addr34:
                        if(_loc7_ || this)
                        {
                           return;
                           addr41:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§>#§ = param5;
            §§goto(addr56);
         }
         §§goto(addr41);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§]e§)
            {
               while(true)
               {
                  this.§]e§.dispose();
                  addr80:
                  while(true)
                  {
                  }
                  addr56:
                  if(!(_loc1_ && this))
                  {
                     super.dispose();
                     if(_loc1_ && _loc2_)
                     {
                        while(_loc2_ || _loc2_)
                        {
                           §§goto(addr56);
                        }
                        §§goto(addr80);
                        addr49:
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               this.§^e§(null);
               §§goto(addr49);
               §§goto(addr80);
            }
         }
         §§goto(addr80);
      }
      
      public function §^e§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§&"$§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr152:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc2_ || param1)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     addr127:
                     while(true)
                     {
                        §§push(§1"&§.§1i§);
                        addr129:
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr131:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§%;§);
                              addr144:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr127:
                  }
                  loop4:
                  while(true)
                  {
                     if(param1 == null)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§1"&§.§1i§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              if(_loc2_ || param1)
                              {
                                 §§pop().removeEventListener(§§pop(),this.§%;§);
                                 loop6:
                                 while(true)
                                 {
                                    addr28:
                                    while(true)
                                    {
                                       this.§&"$§ = param1;
                                       if(!(_loc2_ || param1))
                                       {
                                          continue loop6;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop5;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop4;
                                       }
                                       if(_loc2_ || param1)
                                       {
                                          break loop4;
                                       }
                                       §§goto(addr127);
                                    }
                                 }
                              }
                              §§goto(addr131);
                           }
                           break;
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr28);
                  }
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  §§goto(addr152);
               }
               return;
            }
         }
         §§goto(addr127);
      }
      
      private function §%;§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8,§ = true;
            loop0:
            for(; param1 != null; while(true)
            {
               if(!(_loc3_ && _loc2_))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc2_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§^e§(param1);
            §§goto(addr42);
         }
      }
      
      public function get §%"%§() : Boolean
      {
         return this.§?!o§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ !9§(param1);
         }
         return this.§]e§;
      }
      
      override public function get root() : §%q§.Texture
      {
         return this;
      }
      
      private function § !9§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!(_loc6_ && this))
         {
            if(!this.§8,§)
            {
               if(_loc7_)
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:BitmapData = this.§&"$§ as BitmapData;
            var _loc3_:ByteArray = this.§&"$§ as ByteArray;
            if(!(_loc6_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_ = param1.createTexture(this.§<`§,this.§#!A§,Context3DTextureFormat.BGRA,this.§?!o§);
                     if(!_loc6_)
                     {
                        §%q§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§65§);
                        if(!(_loc6_ && this))
                        {
                           addr169:
                           this.§]e§ = _loc4_;
                           if(_loc7_)
                           {
                              addr174:
                              this.§8,§ = false;
                           }
                        }
                        return;
                     }
                     §§goto(addr174);
                  }
                  else
                  {
                     addr142:
                     _loc4_ = param1.createTexture(this.§<`§,this.§#!A§,_loc5_,this.§?!o§);
                     if(_loc7_)
                     {
                        §%q§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                  }
               }
               else if(_loc3_)
               {
                  if(_loc7_)
                  {
                     if(_loc3_[6] == 2)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(Context3DTextureFormat.COMPRESSED);
                           if(_loc7_ || this)
                           {
                           }
                           addr140:
                           §§push(§§pop());
                        }
                        §§goto(addr142);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§goto(addr140);
                        }
                     }
                     _loc5_ = §§pop();
                  }
                  §§goto(addr142);
               }
               §§goto(addr169);
            }
            §§goto(addr142);
         }
         addr35:
      }
      
      override public function get width() : Number
      {
         return this.§<`§;
      }
      
      override public function get height() : Number
      {
         return this.§#!A§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§65§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>#§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&"$§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
