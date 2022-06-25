package §^!+§
{
   import §<&§.§^b§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+!I§ extends §^!+§.Texture
   {
       
      
      private var §+!C§:TextureBase;
      
      private var §'O§:int;
      
      private var §!!A§:int;
      
      private var §4!U§:Boolean;
      
      private var §<!h§:Boolean;
      
      private var §=!]§:Boolean;
      
      private var §++§:Object;
      
      private var §9!1§:Boolean = false;
      
      public function §+!I§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super();
            while(true)
            {
               this.§+!C§ = param1;
               while(!_loc7_)
               {
                  this.§'O§ = param2;
                  if(_loc8_ || this)
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         while(true)
         {
            this.§!!A§ = param3;
            while(!(_loc7_ && param1))
            {
               this.§4!U§ = param4;
               while(_loc8_ || this)
               {
                  this.§<!h§ = param5;
                  while(!_loc7_)
                  {
                     this.§=!]§ = param6;
                     if(_loc7_)
                     {
                        continue;
                     }
                     §§goto(addr35);
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§+!C§)
            {
               if(!_loc1_)
               {
                  this.§+!C§.dispose();
               }
               while(true)
               {
                  §§goto(addr59);
               }
               addr75:
            }
            while(true)
            {
               this.§;x§(null);
               addr59:
               addr54:
               do
               {
                  if(!(_loc1_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(super.dispose(), _loc1_);
               
               return;
               §§goto(addr75);
            }
         }
         §§goto(addr54);
      }
      
      public function §;x§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§++§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(!§§pop());
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(!(_loc2_ && _loc3_))
                              {
                                 §§push(§^b§.§9E§);
                                 while(true)
                                 {
                                    §§push(Event.CONTEXT3D_CREATE);
                                    addr107:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§!!X§);
                                       addr110:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                              addr96:
                           }
                           loop7:
                           while(true)
                           {
                              if(param1 == null)
                              {
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§^b§.§9E§);
                                       if(!_loc2_)
                                       {
                                          §§push(Event.CONTEXT3D_CREATE);
                                          if(_loc3_)
                                          {
                                             §§pop().removeEventListener(§§pop(),this.§!!X§);
                                             loop8:
                                             while(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   this.§++§ = param1;
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§goto(addr96);
                                                }
                                             }
                                             continue loop7;
                                             addr70:
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr105);
                                    }
                                    addr59:
                                 }
                                 §§goto(addr70);
                              }
                              §§goto(addr29);
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr94);
            }
         }
         §§goto(addr59);
      }
      
      private function §!!X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
            this.§9!1§ = true;
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
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§;x§(param1);
            §§goto(addr47);
         }
      }
      
      public function get §]!o§() : Boolean
      {
         return this.§=!]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§9!k§(param1);
         }
         return this.§+!C§;
      }
      
      override public function get root() : §^!+§.Texture
      {
         return this;
      }
      
      private function §9!k§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_ || _loc3_)
         {
            if(!this.§9!1§)
            {
               if(!_loc7_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:BitmapData = this.§++§ as BitmapData;
            var _loc3_:ByteArray = this.§++§ as ByteArray;
            if(!_loc7_)
            {
               if(_loc2_)
               {
                  if(_loc6_)
                  {
                     _loc4_ = param1.createTexture(this.§'O§,this.§!!A§,Context3DTextureFormat.BGRA,this.§=!]§);
                     if(!_loc7_)
                     {
                        §^!+§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§4!U§);
                        if(!(_loc7_ && _loc3_))
                        {
                           addr158:
                           this.§+!C§ = _loc4_;
                           if(!_loc7_)
                           {
                              this.§9!1§ = false;
                           }
                        }
                     }
                     return;
                  }
                  addr113:
                  addr140:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(_loc6_ || this)
                  {
                     addr139:
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  _loc4_ = param1.createTexture(this.§'O§,this.§!!A§,_loc5_,this.§=!]§);
                  if(!_loc7_)
                  {
                     §^!+§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
               else if(_loc3_)
               {
                  if(!(_loc7_ && this))
                  {
                     addr100:
                     if(_loc3_[6] == 2)
                     {
                        if(_loc6_ || _loc3_)
                        {
                        }
                        §§goto(addr113);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!_loc7_)
                        {
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr113);
               }
               §§goto(addr158);
            }
            §§goto(addr100);
         }
         addr34:
      }
      
      override public function get width() : Number
      {
         return this.§'O§;
      }
      
      override public function get height() : Number
      {
         return this.§!!A§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4!U§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!h§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§++§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
