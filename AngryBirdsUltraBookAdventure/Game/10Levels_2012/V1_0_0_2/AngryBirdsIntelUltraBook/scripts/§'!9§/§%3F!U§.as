package §'!9§
{
   import §<&§.§^b§;
   import §<&§.§`K§;
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §`s§.§0p§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!U§ extends §%!g§
   {
       
      
      private var §[!5§:Texture;
      
      private var §#! §:String;
      
      private var §5_§:Boolean;
      
      private var §3i§:Boolean;
      
      private var §<o§:§0p§;
      
      private var §^!%§:Boolean;
      
      public function §?!U§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ && param2)
            {
            }
            addr41:
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(param1.width);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§goto(addr41);
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc9_ || param2)
         {
            if(_loc4_)
            {
               addr52:
               §§push(Number(_loc4_.height));
               if(!(_loc8_ && param3))
               {
                  addr70:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(param1.height);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     §§goto(addr70);
                  }
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.premultipliedAlpha);
            if(_loc9_ || param1)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_ || param2)
            {
               super(_loc5_,_loc6_,16777215,_loc7_);
               loop0:
               while(true)
               {
                  this.§[!5§ = param1;
                  loop1:
                  while(true)
                  {
                     if(param3)
                     {
                        §§push(this);
                        if(!(_loc8_ && this))
                        {
                           if(§^b§.§7h§)
                           {
                              addr186:
                              §§push(§]-§.§![§);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr208:
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(§]-§.§<! §);
                              if(!(_loc8_ && this))
                              {
                                 §§goto(addr208);
                              }
                           }
                           §§pop().§#! § = §§pop();
                           loop8:
                           while(true)
                           {
                              this.§^!%§ = true;
                              loop9:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    addr214:
                                    while(true)
                                    {
                                       this.§5_§ = param2;
                                       addr155:
                                       while(_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr214:
                                    addr151:
                                 }
                                 else
                                 {
                                    §§goto(addr214);
                                 }
                                 if(!§§pop())
                                 {
                                    if(§^b§.§7h§)
                                    {
                                       addr235:
                                       §§push(§]-§.NONE);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                          }
                                          addr248:
                                          §§pop().§#! § = §§pop();
                                          while(true)
                                          {
                                             §§goto(addr151);
                                             addr130:
                                             if(_loc9_ || this)
                                             {
                                                this.§^t§(true);
                                                addr137:
                                                if(_loc9_)
                                                {
                                                   return;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc9_ || param3)
                                                         {
                                                            this.§<o§ = new §0p§(4,_loc7_);
                                                            continue loop7;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop9;
                                                      addr143:
                                                   }
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr155);
                                                   }
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(§]-§.§![§);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr235);
                              }
                           }
                           addr210:
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr214);
                  }
               }
            }
            §§goto(addr210);
         }
         §§goto(addr52);
      }
      
      public static function §@#§(param1:Context3D, param2:Bitmap) : §?!U§
      {
         return new §?!U§(Texture.§@#§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^!%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.updateVertexData(param1,param2,param3,param4);
         }
         loop0:
         while(true)
         {
            § Q§.setTexCoords(0,0,0);
            loop1:
            do
            {
               § Q§.setTexCoords(1,1,0);
               while(true)
               {
                  § Q§.setTexCoords(2,0,1);
                  while(_loc5_)
                  {
                     continue loop0;
                     § Q§.setTexCoords(3,1,1);
                     if(!(_loc6_ && param1))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc6_ && this);
            
            return;
         }
      }
      
      private function §^t§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            § Q§.copyTo(this.§<o§,0,1,this.§5_§ || param1,null);
            do
            {
               this.§[!5§.adjustVertexData(this.§<o§,0,4);
            }
            while(_loc2_);
            
         }
      }
      
      public function §`!h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.frame;
         if(_loc5_)
         {
            if(_loc1_)
            {
               addr26:
               §§push(Number(_loc1_.width));
               if(_loc5_ || _loc2_)
               {
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     addr50:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     if(_loc1_)
                     {
                        addr91:
                        §§push(Number(_loc1_.height));
                        if(!_loc4_)
                        {
                           addr90:
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           § Q§.setPosition(0,0,0);
                           while(true)
                           {
                              § Q§.setPosition(1,_loc2_,0);
                              while(!_loc4_)
                              {
                                 loop4:
                                 while(!(_loc4_ && _loc1_))
                                 {
                                    this.§^t§();
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr114:
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             § Q§.setPosition(3,_loc2_,_loc3_);
                                             continue loop4;
                                             §§goto(addr114);
                                          }
                                          addr147:
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           § Q§.setPosition(2,0,_loc3_);
                           §§goto(addr147);
                        }
                     }
                     else
                     {
                        §§push(this.texture.height);
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc4_ && _loc2_))
                           {
                              §§goto(addr90);
                           }
                           §§goto(addr91);
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr50);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            § Q§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§^t§();
            }
            while(!_loc4_);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(_loc3_ || this)
         {
            § Q§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§0p§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§<o§.copyTo(param1,param2,param3,this.§5_§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§[!5§)
               {
                  loop1:
                  while(!(_loc2_ && param1))
                  {
                     this.§[!5§ = param1;
                     loop2:
                     while(true)
                     {
                        § Q§.setPremultipliedAlpha(this.§[!5§.premultipliedAlpha);
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr96);
      }
      
      public function get smoothing() : String
      {
         return this.§#! §;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§]-§.§!q§(param1))
            {
               if(!_loc2_)
               {
                  addr73:
                  this.§#! § = param1;
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr73);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§^t§();
         }
         while(!_loc3_);
         
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.setVertexAlpha(param1,param2);
         }
         do
         {
            this.§^t§();
         }
         while(!_loc4_);
         
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.batchQuad(this,param2,this.§[!5§,this.§#! §);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§5_§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§5_§ = true;
               loop0:
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        continue;
                     }
                     addr93:
                     while(true)
                     {
                        this.§5_§ = this.§3i§;
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
               addr51:
            }
            §§goto(addr93);
         }
         §§goto(addr51);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[!5§.clippedBitmapData;
      }
   }
}
