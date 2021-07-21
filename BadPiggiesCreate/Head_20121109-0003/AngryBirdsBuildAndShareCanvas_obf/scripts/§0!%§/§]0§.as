package §0!%§
{
   import §%!j§.§%K§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §]0§ extends §0!%§.Texture
   {
       
      
      private var §?!u§:TextureBase;
      
      private var §",§:int;
      
      private var §%"0§:int;
      
      private var §'z§:Boolean;
      
      private var §[!k§:Boolean;
      
      private var §81§:Boolean;
      
      private var §`!?§:Object;
      
      private var §0b§:Boolean = false;
      
      public function §]0§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super();
            while(true)
            {
               this.§?!u§ = param1;
               addr63:
               if(_loc7_ || param3)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§",§ = param2;
            loop2:
            while(true)
            {
               this.§%"0§ = param3;
               while(true)
               {
                  this.§'z§ = param4;
                  while(_loc7_ || param1)
                  {
                     this.§[!k§ = param5;
                     continue loop1;
                     if(!(_loc8_ && this))
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§?!u§)
            {
               while(true)
               {
                  this.§?!u§.dispose();
                  addr74:
                  while(true)
                  {
                  }
                  addr55:
                  if(!_loc1_)
                  {
                     continue;
                  }
                  super.dispose();
                  addr67:
                  if(_loc2_ && this)
                  {
                     while(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr55);
                        §§goto(addr67);
                     }
                     §§goto(addr74);
                     addr48:
                  }
                  return;
                  addr43:
               }
            }
            while(true)
            {
               this.§2o§(null);
               §§goto(addr48);
               §§goto(addr74);
            }
         }
         §§goto(addr43);
      }
      
      public function §2o§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§`!?§ == null);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr128:
                     loop9:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc2_ && this))
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§%K§.§`9§);
                                    addr103:
                                    while(true)
                                    {
                                       §§push(Event.CONTEXT3D_CREATE);
                                       addr105:
                                       while(true)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§ !m§);
                                          addr108:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 addr101:
                              }
                              loop5:
                              while(true)
                              {
                                 if(param1 == null)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§%K§.§`9§);
                                          if(_loc3_)
                                          {
                                             §§push(Event.CONTEXT3D_CREATE);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§pop().removeEventListener(§§pop(),this.§ !m§);
                                                loop6:
                                                while(true)
                                                {
                                                   addr29:
                                                   while(true)
                                                   {
                                                      this.§`!?§ = param1;
                                                      if(!(_loc2_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      break loop5;
                                                   }
                                                   §§goto(addr101);
                                                }
                                                addr84:
                                             }
                                             §§goto(addr105);
                                          }
                                          §§goto(addr103);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr29);
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                           return;
                           addr99:
                        }
                     }
                  }
                  addr127:
               }
               §§goto(addr99);
            }
            §§goto(addr127);
         }
         §§goto(addr128);
      }
      
      private function § !m§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§0b§ = true;
            while(param1 != null)
            {
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               addr64:
               if(!_loc2_)
               {
                  continue;
               }
               addr61:
               this.§2o§(param1);
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get §5]§() : Boolean
      {
         return this.§81§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]"<§(param1);
         }
         return this.§?!u§;
      }
      
      override public function get root() : §0!%§.Texture
      {
         return this;
      }
      
      private function §]"<§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!_loc7_)
         {
            if(!this.§0b§)
            {
               if(!_loc7_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:BitmapData = this.§`!?§ as BitmapData;
            var _loc3_:ByteArray = this.§`!?§ as ByteArray;
            if(_loc6_ || _loc3_)
            {
               if(_loc2_)
               {
                  if(!(_loc7_ && param1))
                  {
                     _loc4_ = param1.createTexture(this.§",§,this.§%"0§,Context3DTextureFormat.BGRA,this.§81§);
                     if(!_loc7_)
                     {
                        §0!%§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§'z§);
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr168);
                  }
                  else
                  {
                     addr108:
                     addr130:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!(_loc7_ && param1))
                     {
                        addr129:
                        §§push(§§pop());
                     }
                     _loc5_ = §§pop();
                     _loc4_ = param1.createTexture(this.§",§,this.§%"0§,_loc5_,this.§81§);
                     if(!_loc7_)
                     {
                        §0!%§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                  }
               }
               else if(_loc3_)
               {
                  if(!_loc7_)
                  {
                     if(_loc3_[6] == 2)
                     {
                        if(_loc7_)
                        {
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(_loc6_ || _loc3_)
                        {
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr108);
               }
               addr148:
               this.§?!u§ = _loc4_;
               if(_loc6_ || _loc3_)
               {
                  addr168:
                  this.§0b§ = false;
               }
               return;
            }
            §§goto(addr108);
         }
         addr29:
      }
      
      override public function get width() : Number
      {
         return this.§",§;
      }
      
      override public function get height() : Number
      {
         return this.§%"0§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'z§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§[!k§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!?§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
