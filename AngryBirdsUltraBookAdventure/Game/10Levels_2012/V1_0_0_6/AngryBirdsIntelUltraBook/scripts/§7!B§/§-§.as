package §7!B§
{
   import §!!K§.§?%§;
   import §!!K§.§else§;
   import §4>§.§#i§;
   import §4>§.Texture;
   import §9!k§.§=A§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-§ extends §;R§
   {
       
      
      private var §5!6§:Texture;
      
      private var §each §:String;
      
      private var §#!%§:Boolean;
      
      private var §>!C§:Boolean;
      
      private var §[r§:§=A§;
      
      private var §=§:Boolean;
      
      public function §-§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§goto(addr47);
         }
         else
         {
            §§push(param1.width);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!(_loc8_ && this))
               {
                  §§goto(addr46);
               }
               addr47:
               §§push(Number(_loc4_.width));
               if(!(_loc8_ && this))
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc9_)
               {
                  if(_loc4_)
                  {
                     §§goto(addr52);
                  }
                  else
                  {
                     §§push(param1.height);
                     if(_loc9_)
                     {
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr70);
               }
               addr52:
               §§push(Number(_loc4_.height));
               if(_loc9_)
               {
                  addr70:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr62:
                  §§push(Number(§§pop()));
                  if(_loc9_ || param1)
                  {
                     §§goto(addr70);
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(!_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc9_)
               {
                  super(_loc5_,_loc6_,16777215,_loc7_);
                  while(true)
                  {
                     this.§5!6§ = param1;
                     loop1:
                     for(; !_loc8_; if(!(_loc9_ || this))
                     {
                        continue;
                     },this.§[r§ = new §=A§(4,_loc7_),while(!_loc8_)
                     {
                        if(!(_loc8_ && this))
                        {
                           continue;
                        }
                        §§goto(addr164);
                     },§§goto(addr138))
                     {
                        if(!param3)
                        {
                           while(true)
                           {
                              §§push(this);
                              if(_loc9_ || param3)
                              {
                                 if(§else§.§@g§)
                                 {
                                    addr218:
                                    §§push(§#i§.NONE);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc9_ || param2))
                                       {
                                          addr250:
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§#i§.§@R§);
                                    if(_loc9_ || param1)
                                    {
                                       §§goto(addr250);
                                    }
                                 }
                                 §§pop().§each § = §§pop();
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       this.§#!%§ = param2;
                                       addr164:
                                       while(true)
                                       {
                                          this.§>!C§ = this.§#!%§;
                                          addr138:
                                          loop6:
                                          while(!(_loc8_ && param3))
                                          {
                                             addr145:
                                             if(!(_loc8_ && this))
                                             {
                                                continue loop1;
                                             }
                                             addr203:
                                             while(true)
                                             {
                                                this.§=§ = true;
                                                break loop6;
                                                §§goto(addr145);
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                             §§goto(addr138);
                                          }
                                       }
                                    }
                                 }
                                 addr252:
                              }
                              §§goto(addr218);
                           }
                           addr207:
                        }
                        else
                        {
                           §§push(this);
                           if(_loc9_)
                           {
                              if(§else§.§@g§)
                              {
                                 addr179:
                                 §§push(§#i§.§@R§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       addr202:
                                       §§pop().§each § = §§pop();
                                       §§goto(addr203);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              else
                              {
                                 §§push(§#i§.§!!7§);
                                 if(_loc9_ || param2)
                                 {
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr203);
                     }
                  }
               }
               while(true)
               {
                  this.§-'§(true);
                  if(_loc9_)
                  {
                     if(!(_loc8_ && param1))
                     {
                        if(!(_loc8_ && param1))
                        {
                           break;
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr113);
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public static function § l§(param1:Context3D, param2:Bitmap) : §-§
      {
         return new §-§(Texture.§ l§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§=§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               § !3§.setTexCoords(0,0,0);
               addr47:
               if(_loc5_ && param1)
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         while(true)
         {
            § !3§.setTexCoords(1,1,0);
            while(_loc6_)
            {
               § !3§.setTexCoords(2,0,1);
               while(!_loc5_)
               {
                  § !3§.setTexCoords(3,1,1);
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §-'§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            § !3§.copyTo(this.§[r§,0,1,this.§#!%§ || param1,null);
         }
         do
         {
            this.§5!6§.adjustVertexData(this.§[r§,0,4);
         }
         while(_loc3_);
         
      }
      
      public function §9!"§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.frame;
         if(!_loc5_)
         {
            if(_loc1_)
            {
               addr25:
               §§push(Number(_loc1_.width));
               if(_loc5_)
               {
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc4_ || this)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_ || _loc1_)
                  {
                     addr49:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     if(_loc1_)
                     {
                        addr60:
                        §§push(Number(_loc1_.height));
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        §§push(this.texture.height);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && _loc1_))
                           {
                              addr89:
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc5_)
                           {
                              § !3§.setPosition(0,0,0);
                           }
                           while(true)
                           {
                              § !3§.setPosition(1,_loc2_,0);
                              loop1:
                              for(; !_loc5_; if(!(_loc5_ && _loc2_))
                              {
                                 return;
                              })
                              {
                                 § !3§.setPosition(2,0,_loc3_);
                                 while(true)
                                 {
                                    § !3§.setPosition(3,_loc2_,_loc3_);
                                    while(_loc4_ || _loc3_)
                                    {
                                       this.§-'§();
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr60);
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
         if(_loc3_ || param1)
         {
            § !3§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§-'§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_)
         {
            § !3§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§=A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§[r§.copyTo(param1,param2,param3,this.§#!%§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§5!6§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§5!6§)
               {
                  loop1:
                  while(!_loc2_)
                  {
                     this.§5!6§ = param1;
                     loop2:
                     while(true)
                     {
                        § !3§.setPremultipliedAlpha(this.§5!6§.premultipliedAlpha);
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc3_ || this))
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  throw new ArgumentError("Texture cannot be null");
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      public function get smoothing() : String
      {
         return this.§each §;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!§#i§.§42§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(!_loc3_)
            {
               this.§each § = param1;
            }
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§-'§();
         }
         while(!(_loc3_ || _loc3_));
         
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
            this.§-'§();
         }
         while(_loc4_ && _loc3_);
         
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            param1.batchQuad(this,param2,this.§5!6§,this.§each §);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§#!%§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§#!%§ = true;
               loop0:
               while(true)
               {
                  if(!(_loc2_ && this))
                  {
                     loop1:
                     while(true)
                     {
                        super.color = param1;
                        loop2:
                        while(_loc3_ || param1)
                        {
                           while(true)
                           {
                              this.§-'§();
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           return;
                        }
                        addr92:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        this.§#!%§ = this.§>!C§;
                     }
                     addr88:
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr68);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§5!6§.clippedBitmapData;
      }
   }
}
