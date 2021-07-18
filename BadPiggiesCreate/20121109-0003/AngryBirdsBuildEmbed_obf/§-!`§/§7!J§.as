package §-!`§
{
   import §0!-§.§89§;
   import §0!-§.Texture;
   import §6x§.§9!§;
   import §@!X§.§"W§;
   import §@!X§.§7j§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!J§ extends §8!p§
   {
       
      
      private var §8w§:Texture;
      
      private var §6!J§:String;
      
      private var §%Z§:Boolean;
      
      private var §]6§:Boolean;
      
      private var §]!c§:§9!§;
      
      private var §0_§:Boolean;
      
      public function §7!J§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            addr42:
            §§push(Number(_loc4_.width));
            if(!_loc8_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               if(_loc4_)
               {
                  addr47:
                  §§push(Number(_loc4_.height));
                  if(_loc8_ && param1)
                  {
                  }
                  addr65:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1.height);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        §§goto(addr65);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(_loc9_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               super(_loc5_,_loc6_,16777215,_loc7_);
               if(!(_loc8_ && this))
               {
                  this.§8w§ = param1;
                  if(_loc9_)
                  {
                     if(!param3)
                     {
                        addr103:
                        §§push(this);
                        if(!_loc8_)
                        {
                           if(§7j§.§?!X§)
                           {
                              addr109:
                              §§push(§89§.NONE);
                              if(_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr122);
                              }
                           }
                           else
                           {
                              §§push(§89§.§8!;§);
                              if(_loc9_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           addr122:
                           §§pop().§6!J§ = §§pop();
                           §§goto(addr162);
                        }
                        §§goto(addr109);
                     }
                     else
                     {
                        §§push(this);
                        if(!_loc8_)
                        {
                           if(§7j§.§?!X§)
                           {
                              addr130:
                              §§push(§89§.§8!;§);
                              if(_loc9_ || param1)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                 }
                                 §§goto(addr158);
                              }
                           }
                           else
                           {
                              §§push(§89§.§7K§);
                              if(!_loc8_)
                              {
                                 §§goto(addr158);
                              }
                           }
                           addr158:
                           §§pop().§6!J§ = §§pop();
                           this.§0_§ = true;
                           addr162:
                           this.§%Z§ = param2;
                           this.§]6§ = this.§%Z§;
                           this.§]!c§ = new §9!§(4,_loc7_);
                           this.§5q§(true);
                           return;
                        }
                        §§goto(addr130);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr122);
            }
            §§goto(addr47);
         }
         else
         {
            §§push(param1.width);
            if(_loc9_ || param1)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§goto(addr41);
               }
               §§goto(addr42);
            }
         }
         §§goto(addr41);
      }
      
      public static function §&B§(param1:Context3D, param2:Bitmap) : §7!J§
      {
         return new §7!J§(Texture.§&B§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§0_§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super.updateVertexData(param1,param2,param3,param4);
            if(_loc6_ || param3)
            {
               §8<§.setTexCoords(0,0,0);
               if(_loc6_ || this)
               {
                  addr69:
                  §8<§.setTexCoords(1,1,0);
                  if(!(_loc5_ && this))
                  {
                     §8<§.setTexCoords(2,0,1);
                     if(_loc6_ || param3)
                     {
                     }
                  }
                  §§goto(addr98);
               }
               §8<§.setTexCoords(3,1,1);
            }
            addr98:
            return;
         }
         §§goto(addr69);
      }
      
      private function §5q§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §8<§.copyTo(this.§]!c§,0,1,this.§%Z§ || param1,null);
            if(!(_loc2_ && _loc3_))
            {
               this.§8w§.adjustVertexData(this.§]!c§,0,4);
            }
         }
      }
      
      public function §4!H§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.frame;
         if(_loc5_ || _loc1_)
         {
            if(_loc1_)
            {
               addr31:
               §§push(Number(_loc1_.width));
               if(_loc4_)
               {
               }
               addr50:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && _loc1_))
                  {
                     §§goto(addr50);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_ || _loc1_)
            {
               if(_loc1_)
               {
                  addr71:
                  §§push(Number(_loc1_.height));
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        addr90:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_ || _loc1_)
                     {
                        §8<§.setPosition(0,0,0);
                        if(_loc5_)
                        {
                           §8<§.setPosition(1,_loc2_,0);
                           if(_loc5_ || _loc1_)
                           {
                              addr128:
                              §8<§.setPosition(2,0,_loc3_);
                              if(_loc5_ || _loc1_)
                              {
                              }
                              §§goto(addr147);
                           }
                           §8<§.setPosition(3,_loc2_,_loc3_);
                           if(_loc4_)
                           {
                           }
                           §§goto(addr147);
                        }
                        addr147:
                        this.§5q§();
                        return;
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr71);
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §8<§.setTexCoords(param1,param2.x,param2.y);
            if(_loc3_)
            {
               addr32:
               this.§5q§();
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
            §8<§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§9!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§]!c§.copyTo(param1,param2,param3,this.§%Z§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§8w§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
            }
            if(param1 != this.§8w§)
            {
               this.§8w§ = param1;
               if(_loc2_ || _loc3_)
               {
                  §8<§.setPremultipliedAlpha(this.§8w§.premultipliedAlpha);
                  if(!_loc3_)
                  {
                     this.§5q§();
                  }
               }
            }
         }
      }
      
      public function get smoothing() : String
      {
         return this.§6!J§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§89§.isValid(param1))
            {
               if(_loc3_ || this)
               {
                  this.§6!J§ = param1;
                  if(_loc3_)
                  {
                     addr50:
                  }
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr50);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexColor(param1,param2);
            if(_loc3_ || param1)
            {
               addr29:
               this.§5q§();
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
            if(_loc4_ || _loc3_)
            {
               addr30:
               this.§5q§();
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            param1.batchQuad(this,param2,this.§8w§,this.§6!J§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§%Z§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if((param1 & 16777215) == 16777215)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§%Z§ = this.§]6§;
                  if(!(_loc3_ && param1))
                  {
                     addr72:
                     super.color = param1;
                     if(!(_loc3_ && this))
                     {
                        addr82:
                        this.§5q§();
                     }
                  }
                  §§goto(addr82);
               }
               return;
            }
            this.§%Z§ = true;
            if(_loc2_ || this)
            {
               §§goto(addr72);
            }
            §§goto(addr82);
         }
         §§goto(addr72);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§8w§.clippedBitmapData;
      }
   }
}
