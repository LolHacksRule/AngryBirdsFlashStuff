package §?^§
{
   import §&p§.§'_§;
   import §&p§.§`G§;
   import §8f§.§+!A§;
   import each.§1"§;
   import each.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!?§ extends §?C§
   {
       
      
      private var §]s§:Texture;
      
      private var §@L§:String;
      
      private var §4W§:Boolean;
      
      private var §<§:Boolean;
      
      private var §@!B§:§+!A§;
      
      private var §>&§:Boolean;
      
      public function §8!?§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§,!3§)
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
               this.§]s§ = param1;
               if(_loc8_ || this)
               {
                  if(!param3)
                  {
                     §§push(this);
                     if(!(_loc9_ && param1))
                     {
                        if(§'_§.§;'§)
                        {
                           addr121:
                           §§push(§1"§.NONE);
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
                           §§push(§1"§.§3&§);
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
                        if(§'_§.§;'§)
                        {
                           addr154:
                           §§push(§1"§.§3&§);
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
                           §§push(§1"§.§2!<§);
                           if(_loc8_ || param1)
                           {
                              §§goto(addr171);
                           }
                        }
                        addr182:
                        §§pop().§@L§ = §§pop();
                        this.§>&§ = true;
                        if(_loc8_ || param2)
                        {
                           addr144:
                           §§pop().§@L§ = §§pop();
                           if(!_loc8_)
                           {
                           }
                           this.§4W§ = param2;
                           this.§<§ = this.§4W§;
                           this.§@!B§ = new §+!A§(4,_loc7_);
                           if(_loc8_)
                           {
                              this.§7k§(true);
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
      
      public static function § !3§(param1:Context3D, param2:Bitmap) : §8!?§
      {
         return new §8!?§(Texture.§ !3§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§>&§;
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
               §5!@§.setTexCoords(0,0,0);
               if(!(_loc6_ && param3))
               {
                  addr58:
                  §5!@§.setTexCoords(1,1,0);
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr77);
               }
               §5!@§.setTexCoords(2,0,1);
               if(_loc5_ || this)
               {
               }
               §§goto(addr77);
            }
            addr77:
            §5!@§.setTexCoords(3,1,1);
            return;
         }
         §§goto(addr58);
      }
      
      private function §7k§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §5!@§.copyTo(this.§@!B§,0,1,this.§4W§ || param1,null);
            if(!(_loc3_ && param1))
            {
               this.§]s§.adjustVertexData(this.§@!B§,0,4);
            }
         }
      }
      
      public function §48§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.§,!3§;
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
                     §5!@§.setPosition(0,0,0);
                     if(!(_loc5_ && _loc2_))
                     {
                        §5!@§.setPosition(1,_loc2_,0);
                        if(_loc4_)
                        {
                           §5!@§.setPosition(2,0,_loc3_);
                           if(_loc4_)
                           {
                              §5!@§.setPosition(3,_loc2_,_loc3_);
                              if(!_loc5_)
                              {
                                 addr136:
                                 this.§7k§();
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
            §5!@§.setTexCoords(param1,param2.x,param2.y);
            if(!(_loc3_ && param2))
            {
               addr43:
               this.§7k§();
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
            §5!@§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§+!A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§@!B§.copyTo(param1,param2,param3,this.§4W§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§]s§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§]s§)
         {
            this.§]s§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               §5!@§.setPremultipliedAlpha(this.§]s§.premultipliedAlpha);
            }
            this.§7k§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@L§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§1"§.isValid(param1))
            {
               if(_loc2_ || _loc2_)
               {
                  addr39:
                  this.§@L§ = param1;
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
               this.§7k§();
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
               this.§7k§();
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param1.batchQuad(this,param2,this.§]s§,this.§@L§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4W§;
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
                  this.§4W§ = this.§<§;
                  if(!_loc3_)
                  {
                     addr72:
                     super.color = param1;
                     if(!_loc3_)
                     {
                        addr77:
                        this.§7k§();
                     }
                  }
                  §§goto(addr77);
               }
               return;
            }
            this.§4W§ = true;
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
         return this.§]s§.clippedBitmapData;
      }
   }
}
