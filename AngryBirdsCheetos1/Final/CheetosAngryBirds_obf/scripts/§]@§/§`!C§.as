package §]@§
{
   import §;! §.§?!T§;
   import §]!B§.§1!;§;
   import §]!B§.Texture;
   import §`C§.§'!N§;
   import §`C§.§9!'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!C§ extends §9!<§
   {
       
      
      private var §if§:Texture;
      
      private var §0!V§:String;
      
      private var §2!2§:Boolean;
      
      private var §'!;§:Boolean;
      
      private var §`8§:§?!T§;
      
      private var §!#§:Boolean;
      
      public function §`!C§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§@+§)
         {
            addr36:
            §§push(Number(_loc4_.width));
            if(!_loc9_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || param2)
            {
               if(_loc4_)
               {
                  addr46:
                  §§push(Number(_loc4_.height));
                  if(!_loc8_)
                  {
                  }
                  addr69:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param1.height);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc9_ && param3))
                     {
                        §§goto(addr69);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(_loc8_ || param3)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!(_loc9_ && param3))
               {
                  super(_loc5_,_loc6_,16777215,_loc7_);
                  while(true)
                  {
                     this.§if§ = param1;
                     loop1:
                     while(_loc8_ || param1)
                     {
                        if(param3)
                        {
                           §§push(this);
                           if(_loc8_)
                           {
                              if(§9!'§.§'!$§)
                              {
                                 addr173:
                                 §§push(§1!;§.§&@§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ && this)
                                    {
                                    }
                                    addr201:
                                    §§pop().§0!V§ = §§pop();
                                    while(true)
                                    {
                                       this.§!#§ = true;
                                       loop3:
                                       for(; _loc8_; while(true)
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       },while(true)
                                       {
                                          §§push(this);
                                          if(!_loc9_)
                                          {
                                             if(§9!'§.§'!$§)
                                             {
                                                addr212:
                                                §§push(§1!;§.NONE);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc9_ && param1)
                                                   {
                                                   }
                                                   addr235:
                                                   §§pop().§0!V§ = §§pop();
                                                   §§goto(addr236);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§1!;§.§&@§);
                                                if(_loc8_ || this)
                                                {
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr212);
                                       })
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             this.§2!2§ = param2;
                                             while(true)
                                             {
                                                this.§'!;§ = this.§2!2§;
                                                while(!_loc9_)
                                                {
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§`8§ = new §?!T§(4,_loc7_);
                                                         continue loop3;
                                                      }
                                                      return;
                                                      addr107:
                                                      addr151:
                                                   }
                                                   continue loop4;
                                                   if(!(_loc8_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr107);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§1!;§.§>!7§);
                                 if(_loc8_ || this)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr206);
                     }
                  }
               }
               §§goto(addr151);
            }
            §§goto(addr46);
         }
         else
         {
            §§push(param1.width);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  §§goto(addr35);
               }
               §§goto(addr36);
            }
         }
         §§goto(addr35);
      }
      
      public static function §0Z§(param1:Context3D, param2:Bitmap) : §`!C§
      {
         return new §`!C§(Texture.§0Z§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§!#§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §6!3§.setTexCoords(0,0,0);
               loop1:
               while(_loc5_ || param2)
               {
                  while(true)
                  {
                     §6!3§.setTexCoords(1,1,0);
                     while(true)
                     {
                        §6!3§.setTexCoords(2,0,1);
                        while(_loc5_)
                        {
                           §6!3§.setTexCoords(3,1,1);
                           if(_loc5_ || param2)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue loop1;
                              }
                              §§goto(addr58);
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr98);
      }
      
      private function §9l§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §6!3§.copyTo(this.§`8§,0,1,this.§2!2§ || param1,null);
         }
         do
         {
            this.§if§.adjustVertexData(this.§`8§,0,4);
         }
         while(_loc3_);
         
      }
      
      public function §3!N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§@+§;
         if(_loc5_)
         {
            if(_loc1_)
            {
               addr26:
               §§push(Number(_loc1_.width));
               if(_loc4_)
               {
               }
               addr45:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_ || _loc1_)
               {
                  §§push(Number(§§pop()));
                  if(_loc5_)
                  {
                     §§goto(addr45);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  addr81:
                  §§push(Number(_loc1_.height));
                  if(!_loc4_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     §6!3§.setPosition(0,0,0);
                     loop0:
                     while(true)
                     {
                        §6!3§.setPosition(1,_loc2_,0);
                        while(true)
                        {
                           §6!3§.setPosition(2,0,_loc3_);
                           loop2:
                           while(!(_loc4_ && _loc3_))
                           {
                              continue loop0;
                              while(true)
                              {
                                 this.§9l§();
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr113);
               }
               else
               {
                  §§push(this.texture.height);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr80);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr81);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §6!3§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§9l§();
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_)
         {
            §6!3§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!T§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§`8§.copyTo(param1,param2,param3,this.§2!2§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§if§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§if§)
               {
                  if(_loc2_)
                  {
                     this.§if§ = param1;
                  }
                  loop1:
                  while(!(_loc3_ && this))
                  {
                     §6!3§.setPremultipliedAlpha(this.§if§.premultipliedAlpha);
                     do
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(this.§9l§(), !(_loc2_ || param1));
                     
                     break loop0;
                  }
                  throw new ArgumentError("Texture cannot be null");
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr33);
      }
      
      public function get smoothing() : String
      {
         return this.§0!V§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§1!;§.§51§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§0!V§ = param1;
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§9l§();
         }
         while(_loc3_ && param1);
         
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§9l§();
            }
            while(_loc4_ && this);
            
         }
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.batchQuad(this,param2,this.§if§,this.§0!V§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§2!2§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§2!2§ = true;
               loop4:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.color = param1;
                     while(true)
                     {
                        if(_loc3_ && param1)
                        {
                           continue loop4;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              this.§9l§();
                              if(_loc2_ || this)
                              {
                                 return;
                              }
                              continue;
                           }
                           addr92:
                           while(true)
                           {
                              this.§2!2§ = this.§'!;§;
                           }
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue loop4;
                  }
               }
               addr76:
            }
            §§goto(addr92);
         }
         §§goto(addr76);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§if§.clippedBitmapData;
      }
   }
}
