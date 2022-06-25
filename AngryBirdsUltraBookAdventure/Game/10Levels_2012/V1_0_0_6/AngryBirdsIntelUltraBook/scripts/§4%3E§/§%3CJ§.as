package §4>§
{
   import §!!K§.§else§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §<J§ extends §4>§.Texture
   {
       
      
      private var §[c§:TextureBase;
      
      private var §2!d§:int;
      
      private var §@@§:int;
      
      private var §2!B§:Boolean;
      
      private var §3!Z§:Boolean;
      
      private var §6!z§:Boolean;
      
      private var §%v§:Object;
      
      private var §5!B§:Boolean = false;
      
      public function §<J§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            while(true)
            {
               this.§[c§ = param1;
               loop1:
               while(_loc7_ || param3)
               {
                  this.§2!d§ = param2;
                  while(true)
                  {
                     this.§@@§ = param3;
                     do
                     {
                        this.§2!B§ = param4;
                        do
                        {
                           this.§3!Z§ = param5;
                           do
                           {
                              this.§6!z§ = param6;
                           }
                           while(!_loc7_);
                           
                        }
                        while(_loc8_);
                        
                     }
                     while(_loc8_ && param2);
                     
                     if(_loc7_ || this)
                     {
                        if(_loc7_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§[c§)
            {
               while(true)
               {
                  this.§[c§.dispose();
                  addr60:
                  while(true)
                  {
                  }
               }
               addr57:
            }
            while(true)
            {
               this.§!G§(null);
               do
               {
                  super.dispose();
               }
               while(!_loc2_);
               
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §!G§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%v§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(§else§.§^!A§);
                           while(true)
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              addr121:
                              addr48:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§3!r§);
                              }
                              §§push(§else§.§^!A§);
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              §§push(Event.CONTEXT3D_CREATE);
                              if(_loc3_ && param1)
                              {
                                 §§goto(addr121);
                              }
                              §§pop().removeEventListener(§§pop(),this.§3!r§);
                              loop7:
                              while(!_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§%v§ = param1;
                                    if(_loc2_ || param1)
                                    {
                                       return;
                                    }
                                    continue loop7;
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1 == null);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(!§§pop());
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr79:
                           }
                        }
                        while(true)
                        {
                        }
                        addr124:
                     }
                     while(param1 == null)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_)
                           {
                              §§goto(addr48);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr23);
                  }
                  addr113:
               }
               §§goto(addr131);
            }
         }
         §§goto(addr132);
      }
      
      private function §3!r§(param1:Event) : void
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
         if(!(_loc2_ && param1))
         {
            this.§5!B§ = true;
            while(param1 != null)
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     this.§!G§(param1);
                     addr50:
                     break;
                  }
                  continue;
               }
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function get §-B§() : Boolean
      {
         return this.§6!z§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§#!>§(param1);
         }
         return this.§[c§;
      }
      
      override public function get root() : §4>§.Texture
      {
         return this;
      }
      
      private function §#!>§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc6_ || _loc3_)
         {
            if(!this.§5!B§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§%v§ as BitmapData;
         var _loc3_:ByteArray = this.§%v§ as ByteArray;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(_loc6_ || param1)
               {
                  _loc4_ = param1.createTexture(this.§2!d§,this.§@@§,Context3DTextureFormat.BGRA,this.§6!z§);
                  if(_loc6_)
                  {
                     §4>§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§2!B§);
                     if(!_loc7_)
                     {
                        addr153:
                        this.§[c§ = _loc4_;
                        if(_loc6_ || param1)
                        {
                           this.§5!B§ = false;
                        }
                        addr90:
                     }
                     return;
                  }
                  §§goto(addr90);
               }
               else
               {
                  addr108:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!_loc6_)
                  {
                  }
                  addr125:
                  _loc5_ = §§pop();
                  _loc4_ = param1.createTexture(this.§2!d§,this.§@@§,_loc5_,this.§6!z§);
                  if(!_loc7_)
                  {
                     §4>§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
                  addr124:
               }
            }
            else if(_loc3_)
            {
               if(!_loc7_)
               {
                  addr95:
                  if(_loc3_[6] == 2)
                  {
                     if(_loc7_ && _loc2_)
                     {
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr108);
            }
            §§goto(addr153);
         }
         §§goto(addr95);
      }
      
      override public function get width() : Number
      {
         return this.§2!d§;
      }
      
      override public function get height() : Number
      {
         return this.§@@§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§2!B§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3!Z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%v§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
