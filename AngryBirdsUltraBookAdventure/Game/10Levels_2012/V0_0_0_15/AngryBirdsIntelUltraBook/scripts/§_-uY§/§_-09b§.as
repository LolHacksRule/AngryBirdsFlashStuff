package §_-uY§
{
   import §_-0Ea§.§_-AY§;
   import §_-0Ea§.§_-zM§;
   import §_-UD§.§_-9f§;
   import §_-z4§.Texture;
   import §_-z4§.§_-IJ§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-09b§ extends §_-2p§
   {
       
      
      private var §_-7u§:Texture;
      
      private var §_-rA§:String;
      
      private var §_-064§:Boolean;
      
      private var §_-az§:Boolean;
      
      private var §_-dG§:§_-9f§;
      
      private var §_-94§:Boolean;
      
      public function §_-09b§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            addr46:
            §§push(Number(_loc4_.width));
            if(!(_loc9_ && param2))
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc8_)
            {
               if(_loc4_)
               {
                  addr51:
                  §§push(Number(_loc4_.height));
                  if(_loc9_ && param2)
                  {
                  }
               }
               else
               {
                  §§push(param1.height);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc9_ && param3))
                     {
                        addr74:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(param1.premultipliedAlpha);
                     if(!_loc9_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc9_)
                     {
                        super(_loc5_,_loc6_,16777215,_loc7_);
                        loop0:
                        while(true)
                        {
                           this.§_-7u§ = param1;
                           loop1:
                           while(true)
                           {
                              if(!param3)
                              {
                                 continue;
                              }
                              §§push(this);
                              if(_loc8_)
                              {
                                 if(§_-AY§.§_-H3§)
                                 {
                                    addr166:
                                    §§push(§_-IJ§.§_-Th§);
                                    if(!(_loc9_ && param3))
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param3)
                                       {
                                          addr194:
                                          §§pop().§_-rA§ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             this.§_-94§ = true;
                                             loop3:
                                             while(true)
                                             {
                                                addr147:
                                                while(true)
                                                {
                                                   this.§_-064§ = param2;
                                                   loop5:
                                                   while(true)
                                                   {
                                                      this.§_-az§ = this.§_-064§;
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            this.§_-dG§ = new §_-9f§(4,_loc7_);
                                                            while(!_loc9_)
                                                            {
                                                               this.§_-02Z§(true);
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr194);
                                    }
                                    addr193:
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    §§push(§_-IJ§.§_-nO§);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr166);
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this);
                        if(_loc8_ || param3)
                        {
                           if(§_-AY§.§_-H3§)
                           {
                              addr217:
                              §§push(§_-IJ§.NONE);
                              if(!_loc9_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ && param3)
                                 {
                                    addr245:
                                    §§pop().§_-rA§ = §§pop();
                                    §§goto(addr246);
                                 }
                                 §§goto(addr245);
                              }
                           }
                           else
                           {
                              §§push(§_-IJ§.§_-Th§);
                              if(_loc8_)
                              {
                                 §§goto(addr245);
                              }
                           }
                           §§goto(addr245);
                        }
                        §§goto(addr217);
                     }
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr51);
         }
         else
         {
            §§push(param1.width);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc8_ || param3)
               {
                  §§goto(addr45);
               }
               §§goto(addr46);
            }
         }
         §§goto(addr45);
      }
      
      public static function §_-Qi§(param1:Context3D, param2:Bitmap) : §_-09b§
      {
         return new §_-09b§(Texture.§_-Qi§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§_-94§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super.updateVertexData(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §_-BF§.setTexCoords(0,0,0);
               loop1:
               do
               {
                  §_-BF§.setTexCoords(1,1,0);
                  while(_loc5_)
                  {
                     §_-BF§.setTexCoords(2,0,1);
                     do
                     {
                        §_-BF§.setTexCoords(3,1,1);
                     }
                     while(!(_loc5_ || param2));
                     
                     if(!(_loc6_ && param1))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc6_);
               
            }
         }
      }
      
      private function §_-02Z§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-BF§.copyTo(this.§_-dG§,0,1,this.§_-064§ || param1,null);
            do
            {
               this.§_-7u§.adjustVertexData(this.§_-dG§,0,4);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §_-jH§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.frame;
         if(_loc4_)
         {
            if(_loc1_)
            {
               addr25:
               §§push(Number(_loc1_.width));
               if(!(_loc5_ && this))
               {
                  addr49:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr46:
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     §§goto(addr49);
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc1_)
                  {
                     addr70:
                     §§push(Number(_loc1_.height));
                     if(_loc5_)
                     {
                     }
                     addr84:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(this.texture.height);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           §§goto(addr84);
                        }
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     §_-BF§.setPosition(0,0,0);
                     while(true)
                     {
                        §_-BF§.setPosition(1,_loc2_,0);
                        while(_loc4_)
                        {
                           addr122:
                           if(!(_loc5_ && _loc1_))
                           {
                              this.§_-02Z§();
                              addr129:
                              if(!(_loc4_ || _loc2_))
                              {
                                 while(!_loc5_)
                                 {
                                    §§goto(addr122);
                                    §§goto(addr129);
                                 }
                                 while(true)
                                 {
                                    §_-BF§.setPosition(3,_loc2_,_loc3_);
                                    §§goto(addr110);
                                 }
                                 addr110:
                                 addr136:
                              }
                              return;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §_-BF§.setPosition(2,0,_loc3_);
                     §§goto(addr136);
                  }
               }
               §§goto(addr70);
            }
            else
            {
               §§push(this.texture.width);
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr46);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr25);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §_-BF§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§_-02Z§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(!_loc4_)
         {
            §_-BF§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§_-9f§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§_-dG§.copyTo(param1,param2,param3,this.§_-064§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§_-7u§;
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
               while(param1 != this.§_-7u§)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        §§goto(addr87);
                     }
                     this.§_-7u§ = param1;
                  }
                  while(_loc3_ || _loc2_)
                  {
                     §_-BF§.setPremultipliedAlpha(this.§_-7u§.premultipliedAlpha);
                     loop2:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§_-02Z§();
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               return;
            }
            addr87:
            throw new ArgumentError("Texture cannot be null");
         }
         §§goto(addr48);
      }
      
      public function get smoothing() : String
      {
         return this.§_-rA§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!§_-IJ§.§_-Yq§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
         }
         this.§_-rA§ = param1;
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§_-02Z§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§_-02Z§();
            }
            while(!_loc3_);
            
         }
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            param1.batchQuad(this,param2,this.§_-7u§,this.§_-rA§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§_-064§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§_-064§ = true;
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        this.§_-064§ = this.§_-az§;
                        addr86:
                        while(true)
                        {
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     super.color = param1;
                     continue loop0;
                     §§goto(addr86);
                  }
                  addr45:
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§_-7u§.clippedBitmapData;
      }
   }
}
