package §9E§
{
   import §!!9§.§4!'§;
   import §!!9§.Texture;
   import §2N§.§,!J§;
   import §@4§.§,!]§;
   import §@4§.§<!I§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!U§ extends §1!w§
   {
       
      
      private var §,!Q§:Texture;
      
      private var §2F§:String;
      
      private var §^#§:Boolean;
      
      private var §?u§:Boolean;
      
      private var §[_§:§,!J§;
      
      private var §"2§:Boolean;
      
      public function §;!U§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ || param1)
            {
            }
            addr50:
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(param1.width);
            if(!(_loc9_ && param2))
            {
               §§push(Number(§§pop()));
               if(_loc8_ || param2)
               {
                  §§goto(addr50);
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            if(_loc4_)
            {
               addr56:
               §§push(Number(_loc4_.height));
               if(!_loc8_)
               {
               }
               addr74:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param1.height);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_ || param1)
                  {
                     §§goto(addr74);
                  }
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.premultipliedAlpha);
            if(_loc8_ || param2)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc9_ && param3))
            {
               super(_loc5_,_loc6_,16777215,_loc7_);
               while(true)
               {
                  this.§,!Q§ = param1;
                  while(!(_loc9_ && param2))
                  {
                     if(param3)
                     {
                        §§push(this);
                        if(_loc8_)
                        {
                           if(§,!]§.§,?§)
                           {
                              addr183:
                              §§push(§4!'§.§5!'§);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 if(_loc8_ || param1)
                                 {
                                 }
                                 addr201:
                                 §§pop().§2F§ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    this.§"2§ = true;
                                    loop3:
                                    while(true)
                                    {
                                       addr162:
                                       while(true)
                                       {
                                          this.§^#§ = param2;
                                          while(!_loc9_)
                                          {
                                             this.§?u§ = this.§^#§;
                                             while(!_loc9_)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(§4!'§.§<,§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr206);
                  }
               }
            }
            §§goto(addr144);
         }
         §§goto(addr56);
      }
      
      public static function §>O§(param1:Context3D, param2:Bitmap) : §;!U§
      {
         return new §;!U§(Texture.§>O§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§"2§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super.updateVertexData(param1,param2,param3,param4);
         }
         loop0:
         do
         {
            §3!^§.setTexCoords(0,0,0);
            while(true)
            {
               §3!^§.setTexCoords(1,1,0);
               while(_loc6_)
               {
                  §3!^§.setTexCoords(2,0,1);
                  do
                  {
                     §3!^§.setTexCoords(3,1,1);
                  }
                  while(!_loc6_);
                  
                  if(_loc6_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc5_ && param3);
         
      }
      
      private function §#k§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §3!^§.copyTo(this.§[_§,0,1,this.§^#§ || param1,null);
         }
         do
         {
            this.§,!Q§.adjustVertexData(this.§[_§,0,4);
         }
         while(_loc2_);
         
      }
      
      public function §@!i§() : void
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
               if(_loc4_)
               {
               }
               addr40:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(_loc5_)
                  {
                     §§goto(addr40);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && this))
            {
               if(_loc1_)
               {
                  addr51:
                  §§push(Number(_loc1_.height));
                  if(!_loc4_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr77:
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        §§goto(addr80);
                     }
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr77);
                  }
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  §3!^§.setPosition(0,0,0);
                  while(true)
                  {
                     §3!^§.setPosition(1,_loc2_,0);
                  }
                  addr152:
               }
               while(true)
               {
                  §3!^§.setPosition(2,0,_loc3_);
                  for(; !(_loc4_ && this); §3!^§.setPosition(3,_loc2_,_loc3_),do
                  {
                     this.§#k§();
                  }
                  while(!_loc5_);
                  ,if(_loc5_ || this)
                  {
                     return;
                  })
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr152);
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §3!^§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§#k§();
         }
         while(_loc4_ && param1);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(!(_loc4_ && this))
         {
            §3!^§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§,!J§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§[_§.copyTo(param1,param2,param3,this.§^#§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§,!Q§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(_loc2_ || param1)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               while(true)
               {
                  addr75:
                  loop2:
                  while(!(_loc3_ && param1))
                  {
                     while(true)
                     {
                        this.§,!Q§ = param1;
                        while(true)
                        {
                           §3!^§.setPremultipliedAlpha(this.§,!Q§.premultipliedAlpha);
                           while(!(_loc3_ && _loc2_))
                           {
                              this.§#k§();
                              if(_loc2_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr19);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               addr100:
            }
            while(true)
            {
               if(param1 != this.§,!Q§)
               {
                  §§goto(addr75);
               }
               break;
               §§goto(addr100);
            }
            addr19:
            return;
         }
         §§goto(addr82);
      }
      
      public function get smoothing() : String
      {
         return this.§2F§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§4!'§.§%!3§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§2F§ = param1;
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setVertexColor(param1,param2);
            do
            {
               this.§#k§();
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setVertexAlpha(param1,param2);
         }
         do
         {
            this.§#k§();
         }
         while(_loc3_);
         
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.batchQuad(this,param2,this.§,!Q§,this.§2F§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§^#§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§^#§ = true;
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr92:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§^#§ = this.§?u§;
            §§goto(addr92);
         }
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,!Q§.clippedBitmapData;
      }
   }
}
