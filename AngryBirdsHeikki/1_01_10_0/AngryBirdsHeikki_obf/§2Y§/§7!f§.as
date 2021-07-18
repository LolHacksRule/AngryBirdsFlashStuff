package §2Y§
{
   import §"^§.§'X§;
   import §"^§.§+!'§;
   import §=9§.§?!2§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!f§ extends §7?§
   {
       
      
      private var §-y§:Texture;
      
      private var §7n§:String;
      
      private var §]1§:Boolean;
      
      private var §-^§:Boolean;
      
      private var §3s§:§?!2§;
      
      private var §[!+§:Boolean;
      
      public function §7!f§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§8^§)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ || this)
            {
            }
         }
         else
         {
            §§push(param1.width);
            if(!(_loc9_ && param3))
            {
               §§push(Number(§§pop()));
               if(!_loc9_)
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
                     if(_loc9_ && param1)
                     {
                     }
                     addr74:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.height);
                     if(_loc8_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           §§goto(addr74);
                        }
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(_loc8_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                  }
                  loop0:
                  while(true)
                  {
                     this.§-y§ = param1;
                     while(true)
                     {
                        if(!param3)
                        {
                           continue loop0;
                        }
                        §§push(this);
                        if(_loc8_)
                        {
                           if(§+!'§.§"!#§)
                           {
                              addr178:
                              §§push(§#!P§.§?!T§);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ && this)
                                 {
                                 }
                              }
                              else
                              {
                                 addr195:
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(§#!P§.§,!3§);
                              if(!_loc9_)
                              {
                                 §§goto(addr195);
                              }
                           }
                           §§pop().§7n§ = §§pop();
                           loop2:
                           while(true)
                           {
                              this.§[!+§ = true;
                              while(true)
                              {
                                 addr145:
                                 while(true)
                                 {
                                    this.§]1§ = param2;
                                    continue loop2;
                                 }
                                 addr102:
                                 if(_loc8_ || this)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                        §§goto(addr178);
                        if(_loc9_ && param2)
                        {
                           continue;
                        }
                        this.§-^§ = this.§]1§;
                        loop6:
                        while(true)
                        {
                           this.§3s§ = new §?!2§(4,_loc7_);
                           while(true)
                           {
                              if(_loc8_ || this)
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop6;
                           }
                           addr243:
                           while(true)
                           {
                              §§goto(addr145);
                           }
                        }
                     }
                  }
               }
               §§goto(addr51);
            }
         }
         §§goto(addr45);
      }
      
      public static function §"r§(param1:Context3D, param2:Bitmap) : §7!f§
      {
         return new §7!f§(Texture.§"r§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[!+§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §-!^§.setTexCoords(0,0,0);
               loop1:
               while(_loc5_ || param3)
               {
                  while(true)
                  {
                     §-!^§.setTexCoords(1,1,0);
                     while(!_loc6_)
                     {
                        §-!^§.setTexCoords(2,0,1);
                        do
                        {
                           §-!^§.setTexCoords(3,1,1);
                        }
                        while(!(_loc5_ || param1));
                        
                        if(_loc5_ || this)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      private function §%$§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §-!^§.copyTo(this.§3s§,0,1,this.§]1§ || param1,null);
         }
         do
         {
            this.§-y§.adjustVertexData(this.§3s§,0,4);
         }
         while(!_loc2_);
         
      }
      
      public function §,!_§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.§8^§;
         if(!_loc5_)
         {
            if(_loc1_)
            {
               addr25:
               §§push(Number(_loc1_.width));
               if(_loc4_)
               {
                  addr44:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(Number(§§pop()));
                  if(!_loc5_)
                  {
                     §§goto(addr44);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               if(_loc1_)
               {
                  addr50:
                  §§push(Number(_loc1_.height));
                  if(_loc4_ || _loc1_)
                  {
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §-!^§.setPosition(0,0,0);
                     }
                     loop0:
                     do
                     {
                        §-!^§.setPosition(1,_loc2_,0);
                        while(true)
                        {
                           §-!^§.setPosition(2,0,_loc3_);
                           while(_loc4_ || _loc2_)
                           {
                              §-!^§.setPosition(3,_loc2_,_loc3_);
                              while(_loc4_ || _loc3_)
                              {
                                 this.§%$§();
                                 if(_loc4_ || this)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     while(!(_loc4_ || _loc3_));
                     
                     return;
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr50);
         }
         §§goto(addr25);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §-!^§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§%$§();
         }
         while(_loc3_ && param2);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_ || this)
         {
            §-!^§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§3s§.copyTo(param1,param2,param3,this.§]1§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§-y§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            if(param1 == null)
            {
               if(_loc5_ || _loc2_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
            }
            if(param1 != this.§-y§)
            {
               if(_loc5_)
               {
                  addr47:
                  this.§-y§ = param1;
               }
               _loc2_ = this.texture.§8^§;
               if(_loc5_)
               {
                  if(!_loc2_)
                  {
                     §§push(this.texture);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().width);
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop3:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.texture);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().height);
                                       if(_loc5_ || param1)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc6_)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr151:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            while(true)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  this.updateVertexData(_loc3_,_loc4_,color,this.§-y§.premultipliedAlpha);
                                                                  for(; !(_loc6_ && param1); this.§%$§(),if(_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr176:
                                                                        continue loop9;
                                                                     }
                                                                     continue loop5;
                                                                  })
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr155:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(_loc2_.width));
                                                                        break loop5;
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr151);
                                                }
                                                break;
                                             }
                                             continue loop2;
                                             addr106:
                                             while(true)
                                             {
                                                §§push(Number(_loc2_.height));
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop5;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc6_ && _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr125);
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr106);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr106);
            }
            §§goto(addr176);
         }
         §§goto(addr47);
      }
      
      public function get smoothing() : String
      {
         return this.§7n§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§#!P§.§<w§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§7n§ = param1;
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setVertexColor(param1,param2);
            do
            {
               this.§%$§();
            }
            while(!_loc4_);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setVertexAlpha(param1,param2);
         }
         do
         {
            this.§%$§();
         }
         while(!(_loc3_ || param2));
         
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param1.batchQuad(this,param2,this.§-y§,this.§7n§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§]1§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§]1§ = true;
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        continue loop0;
                     }
                     continue;
                     addr97:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§]1§ = this.§-^§;
               §§goto(addr97);
            }
         }
         §§goto(addr77);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§-y§.clippedBitmapData;
      }
   }
}
