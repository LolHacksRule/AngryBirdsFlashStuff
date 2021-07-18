package §`!#§
{
   import §5Q§.§^!e§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §[!O§ extends §`!#§.Texture
   {
       
      
      private var §=_§:TextureBase;
      
      private var §<!f§:int;
      
      private var §8>§:int;
      
      private var §"Q§:Boolean;
      
      private var §<!l§:Boolean;
      
      private var §&!§:Boolean;
      
      private var §6J§:Object;
      
      private var §""F§:Boolean = false;
      
      public function §[!O§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§=_§ = param1;
               addr31:
               if(_loc7_ || param2)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§<!f§ = param2;
            addr94:
            while(true)
            {
               this.§8>§ = param3;
               loop3:
               while(true)
               {
                  this.§"Q§ = param4;
                  addr60:
                  while(true)
                  {
                     if(_loc7_ || param1)
                     {
                        continue loop1;
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§=_§)
            {
               if(!_loc1_)
               {
                  addr72:
                  this.§=_§.dispose();
               }
               while(true)
               {
                  §§goto(addr52);
               }
            }
            addr52:
            while(true)
            {
               this.§1!!§(null);
               do
               {
                  super.dispose();
               }
               while(!(_loc2_ || _loc1_));
               
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §1!!§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6J§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr128:
                     do
                     {
                        §§push(param1 == null);
                        if(!_loc2_)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                        }
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§^!e§.§`?§);
                        addr103:
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr105:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§2"'§);
                              addr108:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                 }
                              }
                              §§goto(addr128);
                           }
                        }
                     }
                     addr101:
                  }
                  loop8:
                  while(true)
                  {
                     if(param1 == null)
                     {
                        while(true)
                        {
                           §§push(§^!e§.§`?§);
                           if(_loc2_ && _loc2_)
                           {
                              break;
                           }
                           §§push(Event.CONTEXT3D_CREATE);
                           if(_loc3_ || _loc2_)
                           {
                              §§pop().removeEventListener(§§pop(),this.§2"'§);
                              while(true)
                              {
                              }
                              addr82:
                           }
                           else
                           {
                              §§goto(addr105);
                           }
                           addr30:
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(!(_loc2_ && _loc3_))
                           {
                              if(_loc3_)
                              {
                                 break loop8;
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr103);
                     }
                     while(true)
                     {
                        this.§6J§ = param1;
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr30);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr120);
      }
      
      private function §2"'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
            this.§""F§ = true;
            loop0:
            for(; param1 != null; while(true)
            {
               if(!(_loc3_ && this))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§1!!§(param1);
            §§goto(addr47);
         }
      }
      
      public function get §5,§() : Boolean
      {
         return this.§&!§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8"-§(param1);
         }
         return this.§=_§;
      }
      
      override public function get root() : §`!#§.Texture
      {
         return this;
      }
      
      private function §8"-§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!_loc7_)
         {
            if(!this.§""F§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§6J§ as BitmapData;
         var _loc3_:ByteArray = this.§6J§ as ByteArray;
         if(!_loc7_)
         {
            if(_loc2_)
            {
               if(!_loc7_)
               {
                  _loc4_ = param1.createTexture(this.§<!f§,this.§8>§,Context3DTextureFormat.BGRA,this.§&!§);
                  if(!(_loc7_ && _loc3_))
                  {
                     §`!#§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§"Q§);
                     if(_loc6_)
                     {
                        addr158:
                        this.§=_§ = _loc4_;
                        if(!_loc7_)
                        {
                           this.§""F§ = false;
                        }
                     }
                  }
                  return;
               }
               addr108:
               addr125:
               §§push(Context3DTextureFormat.COMPRESSED);
               if(_loc6_ || _loc2_)
               {
                  addr124:
                  §§push(§§pop());
               }
               _loc5_ = §§pop();
               _loc4_ = param1.createTexture(this.§<!f§,this.§8>§,_loc5_,this.§&!§);
               if(!(_loc7_ && this))
               {
                  §`!#§.Texture.uploadAtfData(_loc4_,_loc3_);
               }
            }
            else if(_loc3_)
            {
               if(_loc6_ || _loc2_)
               {
                  addr95:
                  if(_loc3_[6] == 2)
                  {
                     if(_loc6_ || _loc3_)
                     {
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc6_)
                     {
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr108);
            }
            §§goto(addr158);
         }
         §§goto(addr95);
      }
      
      override public function get width() : Number
      {
         return this.§<!f§;
      }
      
      override public function get height() : Number
      {
         return this.§8>§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§"Q§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!l§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6J§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
