package §9W§
{
   import §#!;§.§;T§;
   import §#!;§.§?h§;
   import §5!@§.§7!=§;
   import §5!@§.Texture;
   import §@e§.§;2§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!0§ extends §3g§
   {
       
      
      private var §7#§:Texture;
      
      private var §@n§:String;
      
      private var §36§:Boolean;
      
      private var §?E§:Boolean;
      
      private var §-0§:§;2§;
      
      private var §&%§:Boolean;
      
      public function §6!0§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§`! §)
         {
            §§push(Number(_loc4_.width));
            if(!(_loc9_ && param1))
            {
               addr40:
               §§push(Number(§§pop()));
            }
         }
         else
         {
            §§push(param1.width);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  §§goto(addr40);
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc8_ || param2)
         {
            if(_loc4_)
            {
               addr70:
               addr51:
               §§push(Number(_loc4_.height));
               if(!(_loc9_ && param1))
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(!(_loc9_ && param1))
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               super(_loc5_,_loc6_,16777215,_loc7_);
               this.§7#§ = param1;
               if(_loc8_ || this)
               {
                  if(!param3)
                  {
                     §§push(this);
                     if(!(_loc9_ && param1))
                     {
                        if(§;T§.§>!,§)
                        {
                           addr121:
                           §§push(§7!=§.NONE);
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                              if(_loc9_ && param3)
                              {
                              }
                              §§goto(addr144);
                           }
                        }
                        else
                        {
                           §§push(§7!=§.§1%§);
                           if(!(_loc9_ && param2))
                           {
                              §§push(§§pop());
                           }
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr121);
                  }
                  else
                  {
                     §§push(this);
                     if(!_loc9_)
                     {
                        if(§;T§.§>!,§)
                        {
                           addr154:
                           §§push(§7!=§.§1%§);
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                              if(_loc9_)
                              {
                              }
                              §§goto(addr182);
                           }
                           addr171:
                           §§push(§§pop());
                        }
                        else
                        {
                           §§push(§7!=§.§"V§);
                           if(_loc8_ || param1)
                           {
                              §§goto(addr171);
                           }
                        }
                        addr182:
                        §§pop().§@n§ = §§pop();
                        this.§&%§ = true;
                        if(_loc8_ || param2)
                        {
                           addr144:
                           §§pop().§@n§ = §§pop();
                           if(!_loc8_)
                           {
                           }
                           this.§36§ = param2;
                           this.§?E§ = this.§36§;
                           this.§-0§ = new §;2§(4,_loc7_);
                           if(_loc8_)
                           {
                              this.§,R§(true);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr154);
                  }
               }
               §§goto(addr182);
            }
            else
            {
               §§push(param1.height);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr51);
      }
      
      public static function §?g§(param1:Context3D, param2:Bitmap) : §6!0§
      {
         return new §6!0§(Texture.§?g§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§&%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.updateVertexData(param1,param2,param3,param4);
            if(_loc5_)
            {
               §5J§.setTexCoords(0,0,0);
               if(!(_loc6_ && param3))
               {
                  addr58:
                  §5J§.setTexCoords(1,1,0);
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr77);
               }
               §5J§.setTexCoords(2,0,1);
               if(_loc5_ || this)
               {
               }
               §§goto(addr77);
            }
            addr77:
            §5J§.setTexCoords(3,1,1);
            return;
         }
         §§goto(addr58);
      }
      
      private function §,R§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §5J§.copyTo(this.§-0§,0,1,this.§36§ || param1,null);
            if(!(_loc3_ && param1))
            {
               this.§7#§.adjustVertexData(this.§-0§,0,4);
            }
         }
      }
      
      public function §8!=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.§`! §;
         if(_loc4_)
         {
            if(_loc1_)
            {
               addr50:
               §§push(Number(_loc1_.width));
               if(_loc4_ || this)
               {
                  addr49:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  if(_loc1_)
                  {
                     addr65:
                     §§push(Number(_loc1_.height));
                     if(!(_loc5_ && this))
                     {
                        addr89:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr81:
                        §§push(Number(§§pop()));
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr89);
                        }
                     }
                  }
                  else
                  {
                     §§push(this.texture.height);
                     if(_loc4_)
                     {
                        §§goto(addr81);
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     §5J§.setPosition(0,0,0);
                     if(!(_loc5_ && _loc2_))
                     {
                        §5J§.setPosition(1,_loc2_,0);
                        if(_loc4_)
                        {
                           §5J§.setPosition(2,0,_loc3_);
                           if(_loc4_)
                           {
                              §5J§.setPosition(3,_loc2_,_loc3_);
                              if(!_loc5_)
                              {
                                 addr136:
                                 this.§,R§();
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr136);
               }
               §§goto(addr65);
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr49);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr50);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §5J§.setTexCoords(param1,param2.x,param2.y);
            if(!(_loc3_ && param2))
            {
               addr43:
               this.§,R§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_)
         {
            §5J§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§-0§.copyTo(param1,param2,param3,this.§36§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§7#§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§7#§)
         {
            this.§7#§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               §5J§.setPremultipliedAlpha(this.§7#§.premultipliedAlpha);
            }
            this.§,R§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@n§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§7!=§.isValid(param1))
            {
               if(_loc2_ || _loc2_)
               {
                  addr39:
                  this.§@n§ = param1;
                  if(_loc3_ && this)
                  {
                  }
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr39);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexColor(param1,param2);
            if(!(_loc4_ && param2))
            {
               addr29:
               this.§,R§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setVertexAlpha(param1,param2);
            if(!(_loc3_ && _loc3_))
            {
               addr30:
               this.§,R§();
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function render(param1:§?h§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param1.batchQuad(this,param2,this.§7#§,this.§@n§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§36§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if((param1 & 16777215) == 16777215)
            {
               if(_loc2_ || _loc2_)
               {
                  addr55:
                  this.§36§ = this.§?E§;
                  if(!_loc3_)
                  {
                     addr72:
                     super.color = param1;
                     if(!_loc3_)
                     {
                        addr77:
                        this.§,R§();
                     }
                  }
                  §§goto(addr77);
               }
               return;
            }
            this.§36§ = true;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr72);
            }
            §§goto(addr77);
         }
         §§goto(addr55);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§7#§.clippedBitmapData;
      }
   }
}
