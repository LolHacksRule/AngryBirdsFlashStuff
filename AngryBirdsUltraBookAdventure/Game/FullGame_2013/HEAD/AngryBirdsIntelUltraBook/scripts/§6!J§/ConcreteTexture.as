package §6!J§
{
   import §7!>§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class ConcreteTexture extends §6!J§.Texture
   {
       
      
      private var §<h§:TextureBase;
      
      private var §,<§:int;
      
      private var §5,§:int;
      
      private var §,$§:Boolean;
      
      private var §@!Y§:Boolean;
      
      private var §#5§:Boolean;
      
      private var §+p§:Object;
      
      private var §9!?§:Boolean = false;
      
      public function ConcreteTexture(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super();
            while(true)
            {
               this.§<h§ = param1;
               addr115:
               while(true)
               {
                  this.§,<§ = param2;
               }
               addr76:
               if(_loc7_ && param2)
               {
                  continue;
               }
               this.§#5§ = param6;
               addr93:
               if(_loc8_ || param2)
               {
                  addr40:
                  if(!(_loc8_ || this))
                  {
                     loop3:
                     for(; _loc8_; §§goto(addr40))
                     {
                        this.§,$§ = param4;
                        loop4:
                        while(true)
                        {
                           this.§@!Y§ = param5;
                           addr62:
                           addr110:
                           while(true)
                           {
                              if(_loc7_ && param2)
                              {
                                 continue loop4;
                              }
                              if(!(_loc8_ || this))
                              {
                                 break;
                              }
                              §§goto(addr76);
                              §§goto(addr93);
                           }
                           while(true)
                           {
                              this.§5,§ = param3;
                              continue loop3;
                              §§goto(addr69);
                           }
                        }
                     }
                     §§goto(addr115);
                  }
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr110);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§<h§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§<h§.dispose();
               }
               while(true)
               {
                  §§goto(addr67);
               }
               addr83:
            }
            while(true)
            {
               this.§!!>§(null);
               §§goto(addr83);
            }
         }
         addr67:
         while(true)
         {
            super.dispose();
            if(_loc1_ || this)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!!>§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§+p§ == null);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr153:
                        loop7:
                        while(true)
                        {
                           §§push(param1 == null);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              if(!(_loc2_ && this))
                              {
                                 addr107:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    break loop7;
                                    §§goto(addr107);
                                 }
                                 addr108:
                              }
                              break;
                           }
                           continue loop8;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(Starling.§7!+§);
                                    addr125:
                                    while(true)
                                    {
                                       §§push(Event.CONTEXT3D_CREATE);
                                       addr128:
                                       while(true)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§8!<§);
                                       }
                                    }
                                 }
                                 addr112:
                              }
                              while(true)
                              {
                              }
                              addr132:
                           }
                           while(true)
                           {
                              if(param1 == null)
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(Starling.§7!+§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(Event.CONTEXT3D_CREATE);
                                          if(_loc2_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§pop().removeEventListener(§§pop(),this.§8!<§);
                                          while(!(_loc2_ && this))
                                          {
                                          }
                                          §§goto(addr132);
                                       }
                                       else
                                       {
                                          §§goto(addr125);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr153);
                                    }
                                    addr35:
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    return;
                                    addr42:
                                 }
                                 §§goto(addr128);
                              }
                              while(true)
                              {
                                 this.§+p§ = param1;
                                 if(_loc3_)
                                 {
                                    §§goto(addr35);
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr42);
                           }
                        }
                        §§goto(addr107);
                     }
                     addr152:
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr152);
         }
         §§goto(addr112);
      }
      
      private function §8!<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9!?§ = true;
         }
         while(param1 != null)
         {
            if(!_loc3_)
            {
               break;
            }
            addr56:
            if(!(_loc3_ || _loc2_))
            {
               continue;
            }
            this.§!!>§(param1);
            §§goto(addr56);
         }
      }
      
      public function get § else§() : Boolean
      {
         return this.§#5§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!_§(param1);
         }
         return this.§<h§;
      }
      
      override public function get root() : §6!J§.Texture
      {
         return this;
      }
      
      private function §!_§(param1:Context3D) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§9!?§);
            if(_loc7_ || this)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc7_ || this)
               {
                  §§goto(addr48);
               }
            }
            var _loc2_:BitmapData = this.§+p§ as BitmapData;
            var _loc3_:ByteArray = this.§+p§ as ByteArray;
            if(_loc7_ || this)
            {
               §§push(Boolean(_loc2_));
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        _loc4_ = param1.createTexture(this.§,<§,this.§5,§,Context3DTextureFormat.BGRA,this.§#5§);
                        §§goto(addr77);
                     }
                     else
                     {
                        addr138:
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(!(_loc6_ && _loc2_))
                        {
                           addr157:
                           _loc5_ = §§pop();
                           _loc4_ = param1.createTexture(this.§,<§,this.§5,§,_loc5_,this.§#5§);
                           if(_loc7_ || _loc2_)
                           {
                              Texture.uploadAtfData(_loc4_,_loc3_);
                           }
                           addr156:
                        }
                        §§goto(addr157);
                     }
                  }
                  else
                  {
                     §§push(Boolean(_loc3_));
                     if(_loc7_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr130:
                              if(_loc3_[6] == 2)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    §§goto(addr138);
                                 }
                              }
                              else
                              {
                                 §§push(Context3DTextureFormat.BGRA);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr156);
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr157);
               }
               §§goto(addr130);
            }
            addr77:
            if(!_loc6_)
            {
               Texture.uploadBitmapData(_loc4_,_loc2_,this.§,$§);
               if(!_loc6_)
               {
                  addr192:
                  this.§<h§ = _loc4_;
                  if(_loc6_ && this)
                  {
                  }
                  §§goto(addr205);
               }
               this.§9!?§ = false;
            }
            addr205:
            return;
         }
         addr48:
      }
      
      override public function get width() : Number
      {
         return this.§,<§;
      }
      
      override public function get height() : Number
      {
         return this.§5,§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,$§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@!Y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+p§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
