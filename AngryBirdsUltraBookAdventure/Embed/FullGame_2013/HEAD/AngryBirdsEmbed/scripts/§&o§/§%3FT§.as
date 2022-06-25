package §&o§
{
   import §'j§.§3!!§;
   import §0! §.§ case§;
   import §0! §.Texture;
   import §=!0§.§2N§;
   import §=!0§.§>I§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?T§ extends §<3§
   {
       
      
      private var §;p§:Texture;
      
      private var §2!#§:String;
      
      private var §4!B§:Boolean;
      
      private var §4?§:Boolean;
      
      private var §;!G§:§3!!§;
      
      private var §2X§:Boolean;
      
      public function §?T§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§8T§)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ || this)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            else
            {
               addr42:
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  §§goto(addr45);
               }
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || param1)
            {
               if(_loc4_)
               {
                  addr56:
                  §§push(Number(_loc4_.height));
                  if(_loc9_)
                  {
                  }
               }
               else
               {
                  §§push(param1.height);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || param2)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(param1.premultipliedAlpha);
                     if(!(_loc9_ && this))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     if(!(_loc9_ && param3))
                     {
                        this.§;p§ = param1;
                        if(_loc8_ || param1)
                        {
                           if(!param3)
                           {
                              if(_loc8_)
                              {
                                 §§push(this);
                                 if(!(_loc9_ && this))
                                 {
                                    if(§>I§.§0P§)
                                    {
                                       addr140:
                                       §§push(§ case§.NONE);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             §§goto(addr153);
                                          }
                                          addr153:
                                          §§pop().§2!#§ = §§pop();
                                          §§goto(addr152);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§ case§.§@§);
                                       if(_loc8_)
                                       {
                                          addr152:
                                          if(_loc8_ || this)
                                          {
                                             addr161:
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr226);
                           }
                           else
                           {
                              §§push(this);
                              if(_loc8_ || param3)
                              {
                                 if(§>I§.§0P§)
                                 {
                                    addr173:
                                    §§push(§ case§.§@§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_)
                                       {
                                       }
                                       §§goto(addr191);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§ case§.§ 6§);
                                    if(_loc8_ || param3)
                                    {
                                       §§goto(addr191);
                                    }
                                 }
                                 addr191:
                                 §§pop().§2!#§ = §§pop();
                                 this.§2X§ = true;
                                 if(_loc8_ || param2)
                                 {
                                    addr212:
                                    this.§4!B§ = param2;
                                    §§goto(addr215);
                                 }
                                 addr215:
                                 this.§4?§ = this.§4!B§;
                                 if(!(_loc9_ && param3))
                                 {
                                    addr226:
                                    this.§;!G§ = new §3!!§(4,_loc7_);
                                    if(_loc9_)
                                    {
                                    }
                                    §§goto(addr237);
                                 }
                                 this.§@p§(true);
                                 addr237:
                                 return;
                              }
                              §§goto(addr173);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr226);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr56);
         }
         else
         {
            §§push(param1.width);
            if(!(_loc9_ && param1))
            {
               §§goto(addr42);
            }
         }
         §§goto(addr45);
      }
      
      public static function §>! §(param1:Context3D, param2:Bitmap) : §?T§
      {
         return new §?T§(Texture.§>! §(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§2X§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super.updateVertexData(param1,param2,param3,param4);
            if(_loc5_)
            {
               §,Y§.setTexCoords(0,0,0);
               if(!_loc6_)
               {
                  §,Y§.setTexCoords(1,1,0);
                  if(_loc5_)
                  {
                     addr65:
                     §,Y§.setTexCoords(2,0,1);
                     if(_loc5_)
                     {
                        addr72:
                        §,Y§.setTexCoords(3,1,1);
                     }
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr72);
      }
      
      private function §@p§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §,Y§.copyTo(this.§;!G§,0,1,this.§4!B§ || param1,null);
            if(!_loc2_)
            {
               addr51:
               this.§;p§.adjustVertexData(this.§;!G§,0,4);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §&!1§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§8T§;
         if(_loc5_ || _loc1_)
         {
            if(_loc1_)
            {
               addr31:
               §§push(Number(_loc1_.width));
               if(_loc5_)
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     §§goto(addr45);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  addr51:
                  §§push(Number(_loc1_.height));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        §,Y§.setPosition(0,0,0);
                        if(_loc5_ || _loc2_)
                        {
                           §,Y§.setPosition(1,_loc2_,0);
                           if(_loc5_ || this)
                           {
                              §,Y§.setPosition(2,0,_loc3_);
                              if(!_loc5_)
                              {
                              }
                           }
                           §§goto(addr132);
                        }
                        §,Y§.setPosition(3,_loc2_,_loc3_);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr132);
                     }
                     addr132:
                     this.§@p§();
                     return;
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr51);
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §,Y§.setTexCoords(param1,param2.x,param2.y);
            if(!_loc3_)
            {
               addr43:
               this.§@p§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(!(_loc4_ && param1))
         {
            §,Y§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3!!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§;!G§.copyTo(param1,param2,param3,this.§4!B§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§;p§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && this))
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
            }
            if(param1 != this.§;p§)
            {
               if(_loc6_ || param1)
               {
                  addr53:
                  this.§;p§ = param1;
               }
               _loc2_ = this.texture.§8T§;
               if(_loc6_ || param1)
               {
                  if(_loc2_)
                  {
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push(this.texture);
                     if(!_loc5_)
                     {
                        §§push(§§pop().width);
                        if(!_loc5_)
                        {
                           addr92:
                           §§push(Number(Number(_loc2_.width)));
                           if(!_loc5_)
                           {
                              addr95:
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(Number(_loc2_.height));
                                    if(!(_loc5_ && this))
                                    {
                                       addr132:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 else
                                 {
                                    addr123:
                                    §§push(Number(this.texture.height));
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§goto(addr132);
                                    }
                                 }
                              }
                              §§goto(addr144);
                           }
                           _loc4_ = §§pop();
                           this.updateVertexData(_loc3_,_loc4_,color,this.§;p§.premultipliedAlpha);
                           this.§@p§();
                           addr144:
                           return;
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr92);
            }
            §§goto(addr95);
         }
         §§goto(addr53);
      }
      
      public function get smoothing() : String
      {
         return this.§2!#§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§ case§.isValid(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(!_loc3_)
            {
               this.§2!#§ = param1;
               if(!_loc2_)
               {
               }
            }
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexColor(param1,param2);
            if(_loc3_ || this)
            {
               this.§@p§();
            }
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setVertexAlpha(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               addr29:
               this.§@p§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            param1.batchQuad(this,param2,this.§;p§,this.§2!#§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4!B§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push((param1 & 16777215) == 16777215);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr59:
                     §§pop();
                     §§push(alpha == 1);
                  }
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     this.§4!B§ = this.§4?§;
                     if(_loc2_)
                     {
                        addr78:
                        super.color = param1;
                        if(_loc2_)
                        {
                           addr83:
                           this.§@p§();
                        }
                     }
                  }
                  return;
               }
               this.§4!B§ = true;
               if(!_loc3_)
               {
                  §§goto(addr78);
               }
               §§goto(addr83);
            }
            §§goto(addr59);
         }
         §§goto(addr78);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.alpha = param1;
         §§push((color & 16777215) == 16777215);
         if(_loc2_)
         {
            if(§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§pop();
                  §§push(alpha == 1);
               }
            }
         }
         if(§§pop())
         {
            this.§4!B§ = this.§4?§;
         }
         else
         {
            this.§4!B§ = true;
         }
         this.§@p§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§;p§.clippedBitmapData;
      }
   }
}
