package §^V§
{
   import §-Z§.§ G§;
   import §-Z§.§?h§;
   import §3!$§.§+^§;
   import §[P§.§@!$§;
   import §[P§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!,§ extends §09§
   {
       
      
      private var §<i§:Texture;
      
      private var §^K§:String;
      
      private var §&4§:Boolean;
      
      private var §,7§:Boolean;
      
      private var §2b§:§+^§;
      
      private var §'!E§:Boolean;
      
      public function §1!,§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§+e§)
         {
            §§push(Number(_loc4_.width));
            if(!_loc8_)
            {
            }
            addr40:
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(param1.width);
            if(!(_loc9_ && param2))
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  §§goto(addr40);
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            if(_loc4_)
            {
               addr46:
               §§push(Number(_loc4_.height));
               if(_loc8_)
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr61:
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr69);
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(!(_loc9_ && param2))
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               super(_loc5_,_loc6_,16777215,_loc7_);
               while(true)
               {
                  this.§<i§ = param1;
                  for(; _loc8_ || param1; if(_loc8_ || param3)
                  {
                     return;
                  })
                  {
                     if(param3)
                     {
                        §§push(this);
                        if(_loc8_ || param1)
                        {
                           if(§?h§.§7"§)
                           {
                              addr158:
                              §§push(§@!$§.§]!$§);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ && param1)
                                 {
                                    addr180:
                                    §§push(§§pop());
                                 }
                              }
                           }
                           else
                           {
                              §§push(§@!$§.§-b§);
                              if(!(_loc9_ && this))
                              {
                                 §§goto(addr180);
                              }
                           }
                           §§pop().§^K§ = §§pop();
                           this.§'!E§ = true;
                           if(!_loc9_)
                           {
                              loop2:
                              while(true)
                              {
                                 this.§&4§ = param2;
                                 do
                                 {
                                    this.§,7§ = this.§&4§;
                                 }
                                 while(_loc9_);
                                 
                                 this.§2b§ = new §+^§(4,_loc7_);
                                 this.§04§(true);
                                 if(_loc8_ || param1)
                                 {
                                    break;
                                 }
                                 addr186:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc8_ || param3)
                                    {
                                       if(§?h§.§7"§)
                                       {
                                          addr197:
                                          §§push(§@!$§.NONE);
                                          if(_loc8_ || param3)
                                          {
                                             §§push(§§pop());
                                             if(!_loc8_)
                                             {
                                             }
                                             addr230:
                                             §§pop().§^K§ = §§pop();
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          §§push(§@!$§.§]!$§);
                                          if(_loc8_ || param1)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr197);
                                 }
                              }
                              continue;
                              addr132:
                           }
                           while(true)
                           {
                              §§goto(addr132);
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr186);
                  }
               }
            }
            else
            {
               §§push(param1.height);
               if(!(_loc9_ && param2))
               {
                  §§goto(addr61);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr46);
      }
      
      public static function §%U§(param1:Context3D, param2:Bitmap) : §1!,§
      {
         return new §1!,§(Texture.§%U§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§'!E§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §;#§.setTexCoords(0,0,0);
               addr56:
               if(_loc6_ || param3)
               {
                  §;#§.setTexCoords(3,1,1);
                  addr73:
                  if(!_loc6_)
                  {
                     while(_loc6_ || param3)
                     {
                        §§goto(addr56);
                        §§goto(addr73);
                     }
                     while(_loc6_ || param2)
                     {
                        §;#§.setTexCoords(2,0,1);
                        §§goto(addr49);
                     }
                     addr49:
                     while(true)
                     {
                        §;#§.setTexCoords(1,1,0);
                        §§goto(addr80);
                     }
                     addr80:
                     addr94:
                  }
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      private function §04§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §;#§.copyTo(this.§2b§,0,1,this.§&4§ || param1,null);
            do
            {
               this.§<i§.adjustVertexData(this.§2b§,0,4);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §8s§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§+e§;
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
            }
            else
            {
               §§push(this.texture.width);
               if(!(_loc4_ && _loc1_))
               {
                  §§push(Number(§§pop()));
                  if(_loc5_)
                  {
                     §§goto(addr50);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  addr56:
                  §§push(Number(_loc1_.height));
                  if(_loc4_)
                  {
                  }
                  addr85:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr85);
                     }
                  }
               }
               var _loc3_:* = §§pop();
               if(_loc5_ || _loc2_)
               {
                  §;#§.setPosition(0,0,0);
                  while(true)
                  {
                     §;#§.setPosition(1,_loc2_,0);
                     while(!_loc4_)
                     {
                        §;#§.setPosition(2,0,_loc3_);
                        loop2:
                        while(_loc5_)
                        {
                           §;#§.setPosition(3,_loc2_,_loc3_);
                           do
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           while(this.§04§(), _loc4_ && _loc1_);
                           
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §;#§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§04§();
            }
            while(_loc3_);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_)
         {
            §;#§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§+^§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§2b§.copyTo(param1,param2,param3,this.§&4§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§<i§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1 == null)
         {
            if(_loc2_ || this)
            {
               throw new ArgumentError("Texture cannot be null");
            }
         }
         if(param1 != this.§<i§)
         {
            this.§<i§ = param1;
            §;#§.setPremultipliedAlpha(this.§<i§.premultipliedAlpha);
            this.§04§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§^K§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§@!$§.isValid(param1))
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr78:
                  this.§^K§ = param1;
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr78);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.setVertexColor(param1,param2);
            do
            {
               this.§04§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§04§();
            }
            while(_loc3_);
            
         }
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.batchQuad(this,param2,this.§<i§,this.§^K§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§&4§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if((param1 & 16777215) == 16777215)
            {
               if(_loc2_ || param1)
               {
                  this.§&4§ = this.§,7§;
                  addr86:
                  loop3:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        super.color = param1;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              this.§04§();
                              if(_loc2_)
                              {
                                 addr28:
                                 if(_loc3_ && param1)
                                 {
                                    while(true)
                                    {
                                       continue loop1;
                                       §§goto(addr28);
                                    }
                                    addr69:
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop3;
                     }
                  }
                  addr86:
               }
               §§goto(addr86);
            }
            else
            {
               this.§&4§ = true;
            }
            §§goto(addr69);
         }
         §§goto(addr86);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§<i§.clippedBitmapData;
      }
   }
}
