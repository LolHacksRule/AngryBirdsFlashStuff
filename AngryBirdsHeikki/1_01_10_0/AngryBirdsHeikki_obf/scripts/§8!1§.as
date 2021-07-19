package
{
   import §"^§.§+!'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §8!1§ extends Texture
   {
       
      
      private var §+!N§:TextureBase;
      
      private var §@!-§:int;
      
      private var §3S§:int;
      
      private var §!!'§:Boolean;
      
      private var §][§:Boolean;
      
      private var §+!7§:Boolean;
      
      private var §`!,§:Object;
      
      private var §;x§:Boolean = false;
      
      public function §8!1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§+!N§ = param1;
               while(true)
               {
                  this.§@!-§ = param2;
                  while(!_loc7_)
                  {
                     this.§3S§ = param3;
                     while(!(_loc7_ && param2))
                     {
                        this.§!!'§ = param4;
                        continue loop0;
                        while(!(_loc7_ && param2))
                        {
                           this.§+!7§ = param6;
                           if(!_loc7_)
                           {
                              addr30:
                              if(_loc8_ || param2)
                              {
                                 return;
                                 addr37:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§][§ = param5;
            §§goto(addr42);
         }
         §§goto(addr37);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§+!N§)
            {
               while(true)
               {
                  this.§+!N§.dispose();
                  addr80:
                  while(true)
                  {
                  }
               }
               addr77:
            }
            loop0:
            while(true)
            {
               this.§&3§(null);
               while(!(_loc1_ && this))
               {
                  super.dispose();
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc2_ || _loc1_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §&3§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`!,§ == null);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop9:
                  while(true)
                  {
                     §§pop();
                     addr132:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!(_loc3_ && this))
                        {
                           §§push(!§§pop());
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop9;
                     }
                  }
                  addr131:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(!(_loc3_ && _loc2_))
                     {
                        §§push(§+!'§.§2d§);
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr109:
                           addr41:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§3!c§);
                              addr112:
                              while(true)
                              {
                              }
                           }
                           §§push(§+!'§.§2d§);
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           §§push(Event.CONTEXT3D_CREATE);
                           if(!_loc3_)
                           {
                              §§pop().removeEventListener(§§pop(),this.§3!c§);
                              loop7:
                              for(; _loc2_ || param1; while(true)
                              {
                                 this.§`!,§ = param1;
                                 if(_loc2_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              },return)
                              {
                                 if(!(_loc2_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    continue loop7;
                                 }
                              }
                              §§goto(addr112);
                              addr67:
                           }
                           §§goto(addr109);
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr41);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr23);
                     §§goto(addr112);
                  }
               }
            }
            §§goto(addr131);
         }
         §§goto(addr81);
      }
      
      private function §3!c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;x§ = true;
            loop0:
            while(param1 != null)
            {
               if(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.§&3§(param1);
                  }
                  addr49:
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get §0z§() : Boolean
      {
         return this.§+!7§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!f§(param1);
         }
         return this.§+!N§;
      }
      
      override public function get root() : Texture
      {
         return this;
      }
      
      private function §6!f§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc7_)
         {
            if(!this.§;x§)
            {
               if(!_loc6_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:BitmapData = this.§`!,§ as BitmapData;
            var _loc3_:ByteArray = this.§`!,§ as ByteArray;
            if(_loc7_ || _loc3_)
            {
               if(_loc2_)
               {
                  if(!(_loc6_ && this))
                  {
                     _loc4_ = param1.createTexture(this.§@!-§,this.§3S§,Context3DTextureFormat.BGRA,this.§+!7§);
                     if(_loc7_)
                     {
                        Texture.uploadBitmapData(_loc4_,_loc2_,this.§!!'§);
                        if(!(_loc6_ && this))
                        {
                           addr144:
                           this.§+!N§ = _loc4_;
                           if(!(_loc6_ && this))
                           {
                              this.§;x§ = false;
                           }
                        }
                     }
                     return;
                  }
                  addr109:
                  addr121:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!_loc6_)
                  {
                     addr120:
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  _loc4_ = param1.createTexture(this.§@!-§,this.§3S§,_loc5_,this.§+!7§);
                  if(_loc7_ || _loc2_)
                  {
                     Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
               else if(_loc3_)
               {
                  if(_loc7_)
                  {
                     if(_loc3_[6] == 2)
                     {
                        if(_loc6_)
                        {
                        }
                        §§goto(addr109);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(_loc7_)
                        {
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr109);
               }
               §§goto(addr144);
            }
            §§goto(addr109);
         }
         addr30:
      }
      
      override public function get width() : Number
      {
         return this.§@!-§;
      }
      
      override public function get height() : Number
      {
         return this.§3S§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§!!'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§][§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!,§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
