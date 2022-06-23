package §,_§
{
   import §,G§.§ u§;
   import §7!=§.§<V§;
   import §7!=§.Texture;
   import §catch§.§'d§;
   import §catch§.§4@§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4K§ extends §-!!§
   {
       
      
      private var §[#§:Texture;
      
      private var §%b§:String;
      
      private var §;6§:Boolean;
      
      private var §<!6§:Boolean;
      
      private var §>!4§:§ u§;
      
      private var §8J§:Boolean;
      
      public function §4K§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§4B§)
         {
            addr52:
            §§push(Number(_loc4_.width));
            if(!(_loc8_ && param1))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc9_ || param3)
            {
               if(_loc4_)
               {
                  addr62:
                  §§push(Number(_loc4_.height));
                  if(_loc9_ || param1)
                  {
                     addr90:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(param1.height);
                  if(!(_loc8_ && param3))
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && param3))
                     {
                        §§goto(addr90);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(!(_loc8_ && param2))
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               super(_loc5_,_loc6_,16777215,_loc7_);
               this.§[#§ = param1;
               if(!param3)
               {
                  §§push(this);
                  if(!(_loc8_ && param3))
                  {
                     if(§4@§.§?!A§)
                     {
                        addr135:
                        §§push(§<V§.NONE);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc9_ || this)
                           {
                           }
                           addr153:
                           §§pop().§%b§ = §§pop();
                           if(_loc9_ || this)
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr239);
                        }
                     }
                     else
                     {
                        §§push(§<V§.§4s§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr135);
               }
               else
               {
                  §§push(this);
                  if(_loc9_ || this)
                  {
                     if(§4@§.§?!A§)
                     {
                        addr173:
                        §§push(§<V§.§4s§);
                        if(_loc9_)
                        {
                           §§push(§§pop());
                           if(_loc8_ && param1)
                           {
                           }
                           §§goto(addr196);
                        }
                     }
                     else
                     {
                        §§push(§<V§.§2'§);
                        if(!(_loc8_ && param2))
                        {
                           §§goto(addr196);
                        }
                     }
                     addr196:
                     §§pop().§%b§ = §§pop();
                     this.§8J§ = true;
                     §§goto(addr200);
                  }
                  §§goto(addr173);
               }
               return;
            }
            §§goto(addr62);
         }
         else
         {
            §§push(param1.width);
            if(_loc9_ || param1)
            {
               §§push(Number(§§pop()));
               if(!(_loc8_ && param1))
               {
                  §§goto(addr51);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr51);
      }
      
      public static function §,c§(param1:Context3D, param2:Bitmap) : §4K§
      {
         return new §4K§(Texture.§,c§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§8J§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super.updateVertexData(param1,param2,param3,param4);
            if(_loc6_ || param1)
            {
               § !!§.setTexCoords(0,0,0);
               if(!(_loc5_ && param3))
               {
                  § !!§.setTexCoords(1,1,0);
                  if(!(_loc5_ && param1))
                  {
                     addr81:
                     § !!§.setTexCoords(2,0,1);
                     if(_loc6_ || param2)
                     {
                     }
                     §§goto(addr98);
                  }
               }
               § !!§.setTexCoords(3,1,1);
            }
            addr98:
            return;
         }
         §§goto(addr81);
      }
      
      private function §@g§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            § !!§.copyTo(this.§>!4§,0,1,this.§;6§ || param1,null);
            if(!_loc3_)
            {
               this.§[#§.adjustVertexData(this.§>!4§,0,4);
            }
         }
      }
      
      public function §6]§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§4B§;
         if(_loc5_ || _loc3_)
         {
            if(_loc1_)
            {
               addr31:
               §§push(Number(_loc1_.width));
               if(_loc5_)
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr42:
                  §§push(Number(§§pop()));
                  if(_loc5_ || _loc1_)
                  {
                     §§goto(addr50);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_)
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_)
            {
               if(_loc1_)
               {
                  §§goto(addr91);
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr90);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr90);
            }
            addr91:
            §§push(Number(_loc1_.height));
            if(!(_loc4_ && this))
            {
               addr90:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               § !!§.setPosition(0,0,0);
               if(_loc5_)
               {
                  § !!§.setPosition(1,_loc2_,0);
                  if(!(_loc4_ && _loc2_))
                  {
                     § !!§.setPosition(2,0,_loc3_);
                     if(_loc5_ || _loc1_)
                     {
                     }
                     §§goto(addr147);
                  }
               }
               § !!§.setPosition(3,_loc2_,_loc3_);
               if(_loc5_ || _loc1_)
               {
               }
               §§goto(addr147);
            }
            addr147:
            this.§@g§();
            return;
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            § !!§.setTexCoords(param1,param2.x,param2.y);
            if(_loc3_ || param2)
            {
               addr32:
               this.§@g§();
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(!_loc3_)
         {
            § !!§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§ u§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§>!4§.copyTo(param1,param2,param3,this.§;6§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[#§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 == null)
            {
               throw new ArgumentError("Texture cannot be null");
            }
            if(param1 != this.§[#§)
            {
               this.§[#§ = param1;
               if(!_loc2_)
               {
                  § !!§.setPremultipliedAlpha(this.§[#§.premultipliedAlpha);
               }
               this.§@g§();
            }
         }
      }
      
      public function get smoothing() : String
      {
         return this.§%b§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§<V§.isValid(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(_loc2_)
            {
               this.§%b§ = param1;
               if(!_loc3_)
               {
                  addr44:
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexColor(param1,param2);
            if(_loc3_)
            {
               addr24:
               this.§@g§();
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setVertexAlpha(param1,param2);
            if(_loc3_)
            {
               this.§@g§();
            }
         }
      }
      
      override public function render(param1:§'d§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.batchQuad(this,param2,this.§[#§,this.§%b§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§;6§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if((param1 & 16777215) == 16777215)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr50:
                  this.§;6§ = this.§<!6§;
                  if(_loc3_)
                  {
                  }
               }
               addr62:
               super.color = param1;
               if(_loc2_ || this)
               {
                  this.§@g§();
               }
            }
            else
            {
               this.§;6§ = true;
               if(!_loc3_)
               {
                  §§goto(addr62);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[#§.clippedBitmapData;
      }
   }
}
