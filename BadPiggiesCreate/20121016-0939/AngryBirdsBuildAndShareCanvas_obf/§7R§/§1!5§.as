package §7R§
{
   import §6p§.§?%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §1!5§ extends §7R§.Texture
   {
       
      
      private var §`W§:TextureBase;
      
      private var §7!T§:int;
      
      private var §>w§:int;
      
      private var §]!A§:Boolean;
      
      private var §,";§:Boolean;
      
      private var §@o§:Boolean;
      
      private var §"!k§:Object;
      
      private var §!`§:Boolean = false;
      
      public function §1!5§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§`W§ = param1;
               addr100:
               while(true)
               {
                  this.§7!T§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§>w§ = param3;
                     while(_loc8_)
                     {
                        this.§]!A§ = param4;
                        if(_loc8_ || this)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            this.§,";§ = param5;
            while(!_loc7_)
            {
               this.§@o§ = param6;
               if(_loc8_)
               {
                  continue loop4;
               }
            }
            §§goto(addr100);
         }
         §§goto(addr61);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§`W§)
            {
               while(true)
               {
                  this.§`W§.dispose();
                  addr79:
                  while(true)
                  {
                  }
                  addr43:
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
            while(true)
            {
               this.§#"2§(null);
               while(!(_loc2_ && this))
               {
                  super.dispose();
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr43);
               }
               §§goto(addr79);
            }
            §§goto(addr50);
         }
         §§goto(addr79);
      }
      
      public function §#"2§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§"!k§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr122:
                     while(true)
                     {
                        §§push(param1 == null);
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc3_ && param1)
                        {
                           break;
                        }
                        if(!_loc2_)
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
                     while(true)
                     {
                        §§push(§?%§.§%b§);
                        addr99:
                        while(true)
                        {
                           §§push(Event.CONTEXT3D_CREATE);
                           addr101:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§6h§);
                              addr114:
                              while(true)
                              {
                              }
                           }
                        }
                        addr34:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        addr41:
                        if(_loc2_)
                        {
                           break loop3;
                        }
                        §§goto(addr122);
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §§push(§?%§.§%b§);
                              if(!_loc3_)
                              {
                                 §§push(Event.CONTEXT3D_CREATE);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§6h§);
                                    loop9:
                                    while(_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§"!k§ = param1;
                                          if(_loc3_)
                                          {
                                             continue loop9;
                                          }
                                          §§goto(addr34);
                                       }
                                    }
                                    continue loop8;
                                    addr76:
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr99);
                           }
                           addr50:
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr41);
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function §6h§(param1:Event) : void
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!`§ = true;
            loop0:
            while(param1 != null)
            {
               if(!_loc3_)
               {
                  while(true)
                  {
                     this.§#"2§(param1);
                  }
                  addr39:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function get §+"<§() : Boolean
      {
         return this.§@o§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!i§(param1);
         }
         return this.§`W§;
      }
      
      override public function get root() : §7R§.Texture
      {
         return this;
      }
      
      private function §!!i§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(!(_loc6_ && param1))
         {
            if(!this.§!`§)
            {
               if(_loc7_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§"!k§ as BitmapData;
         var _loc3_:ByteArray = this.§"!k§ as ByteArray;
         if(_loc7_ || _loc2_)
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  _loc4_ = param1.createTexture(this.§7!T§,this.§>w§,Context3DTextureFormat.BGRA,this.§@o§);
                  if(_loc7_)
                  {
                     §7R§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§]!A§);
                     if(!(_loc6_ && _loc3_))
                     {
                        addr159:
                        this.§`W§ = _loc4_;
                        if(!(_loc6_ && _loc3_))
                        {
                           this.§!`§ = false;
                        }
                        addr101:
                     }
                     return;
                  }
                  §§goto(addr101);
               }
               else
               {
                  addr142:
                  _loc4_ = param1.createTexture(this.§7!T§,this.§>w§,_loc5_,this.§@o§);
                  if(!_loc6_)
                  {
                     §7R§.Texture.uploadAtfData(_loc4_,_loc3_);
                  }
               }
            }
            else if(_loc3_)
            {
               if(!(_loc6_ && param1))
               {
                  if(_loc3_[6] == 2)
                  {
                     if(!(_loc6_ && this))
                     {
                        addr124:
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(_loc7_ || param1)
                        {
                           addr140:
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr142);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc7_)
                     {
                        §§goto(addr140);
                     }
                  }
                  _loc5_ = §§pop();
               }
               §§goto(addr142);
            }
            §§goto(addr159);
         }
         §§goto(addr124);
      }
      
      override public function get width() : Number
      {
         return this.§7!T§;
      }
      
      override public function get height() : Number
      {
         return this.§>w§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]!A§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,";§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§"!k§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
