package §=!4§
{
   import §!!!§.§6!l§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §<r§ extends §=!4§.Texture
   {
       
      
      private var §?"2§:TextureBase;
      
      private var §!a§:int;
      
      private var §2!y§:int;
      
      private var §7S§:Boolean;
      
      private var §40§:Boolean;
      
      private var §^"$§:Boolean;
      
      private var §7!?§:Object;
      
      private var §'e§:Boolean = false;
      
      public function §<r§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
         }
         while(true)
         {
            this.§?"2§ = param1;
            loop1:
            for(; _loc7_; while(_loc7_ || param3)
            {
               this.§^"$§ = param6;
               if(_loc8_ && this)
               {
                  continue;
               }
               if(!_loc8_)
               {
                  §§goto(addr36);
               }
               §§goto(addr70);
            })
            {
               this.§!a§ = param2;
               loop2:
               while(true)
               {
                  this.§2!y§ = param3;
                  do
                  {
                     this.§7S§ = param4;
                     while(!_loc8_)
                     {
                        this.§40§ = param5;
                        continue loop1;
                     }
                     continue loop2;
                  }
                  while(!(_loc7_ || param2));
                  
                  return;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§?"2§)
            {
               while(true)
               {
                  this.§?"2§.dispose();
                  addr80:
                  addr51:
                  while(true)
                  {
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
            while(true)
            {
               this.§`!'§(null);
               §§goto(addr80);
            }
         }
         while(true)
         {
            super.dispose();
            if(_loc1_)
            {
               continue;
            }
            if(_loc2_ || _loc2_)
            {
               §§goto(addr51);
            }
            §§goto(addr80);
         }
         §§goto(addr58);
      }
      
      public function §`!'§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§7!?§ == null);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     addr132:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(!(_loc3_ && param1))
                        {
                           §§push(!§§pop());
                        }
                        if(_loc2_ || param1)
                        {
                           break;
                        }
                        continue loop8;
                     }
                  }
                  addr131:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(§6!l§.§+J§);
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr109:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§'"1§);
                           }
                        }
                        addr107:
                     }
                     while(true)
                     {
                     }
                     addr112:
                  }
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(§6!l§.§+J§);
                           if(_loc2_)
                           {
                              §§push(Event.CONTEXT3D_CREATE);
                              if(!(_loc3_ && param1))
                              {
                                 §§pop().removeEventListener(§§pop(),this.§'"1§);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 continue loop0;
                                 addr77:
                              }
                              else
                              {
                                 §§goto(addr109);
                              }
                              §§goto(addr112);
                           }
                           else
                           {
                              §§goto(addr107);
                           }
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr28);
                  }
               }
            }
            §§goto(addr131);
         }
         §§goto(addr39);
      }
      
      private function §'"1§(param1:Event) : void
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'e§ = true;
            while(param1 != null)
            {
               if(!_loc2_)
               {
                  break;
               }
               addr54:
               if(_loc3_)
               {
                  continue;
               }
               addr51:
               this.§`!'§(param1);
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function get §%!m§() : Boolean
      {
         return this.§^"$§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§&!%§(param1);
         }
         return this.§?"2§;
      }
      
      override public function get root() : §=!4§.Texture
      {
         return this;
      }
      
      private function §&!%§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(_loc7_)
         {
            if(!this.§'e§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§7!?§ as BitmapData;
         var _loc3_:ByteArray = this.§7!?§ as ByteArray;
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(!_loc6_)
               {
                  _loc4_ = param1.createTexture(this.§!a§,this.§2!y§,Context3DTextureFormat.BGRA,this.§^"$§);
                  if(_loc7_ || param1)
                  {
                     §=!4§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§7S§);
                     if(!_loc6_)
                     {
                        addr154:
                        this.§?"2§ = _loc4_;
                        if(_loc7_)
                        {
                           addr159:
                           this.§'e§ = false;
                        }
                     }
                     return;
                  }
                  §§goto(addr159);
               }
               else
               {
                  addr96:
                  if(_loc3_[6] == 2)
                  {
                     if(_loc7_)
                     {
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(!_loc6_)
                        {
                           addr121:
                           _loc5_ = §§pop();
                        }
                        §§goto(addr121);
                     }
                     addr122:
                     _loc4_ = param1.createTexture(this.§!a§,this.§2!y§,_loc5_,this.§^"$§);
                     if(!(_loc6_ && _loc3_))
                     {
                        §=!4§.Texture.uploadAtfData(_loc4_,_loc3_);
                     }
                     §§goto(addr154);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr121);
               }
            }
            else if(_loc3_)
            {
               if(_loc7_ || _loc2_)
               {
                  §§goto(addr96);
               }
               §§goto(addr122);
            }
            §§goto(addr154);
         }
         §§goto(addr96);
      }
      
      override public function get width() : Number
      {
         return this.§!a§;
      }
      
      override public function get height() : Number
      {
         return this.§2!y§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§7S§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§40§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§7!?§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
