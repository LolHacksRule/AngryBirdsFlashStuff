package §6!7§
{
   import §0P§.RenderSupport;
   import §0P§.Starling;
   import §7i§.§=!C§;
   import §7i§.Texture;
   import §8g§.VertexData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-m§ extends §3x§
   {
       
      
      private var §5@§:Texture;
      
      private var §@!U§:String;
      
      private var §<!K§:Boolean;
      
      private var §0!5§:Boolean;
      
      private var §[!V§:VertexData;
      
      private var §`>§:Boolean;
      
      public function §-m§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle = param1.frame;
         if(_loc8_ || param2)
         {
            if(_loc4_)
            {
               addr30:
               §§push(Number(_loc4_.width));
               if(!_loc9_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(param1.width);
               if(_loc8_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && param2))
                  {
                     §§goto(addr53);
                  }
               }
            }
            var _loc5_:* = §§pop();
            if(_loc8_)
            {
               if(_loc4_)
               {
                  addr60:
                  §§push(Number(_loc4_.height));
                  if(_loc9_)
                  {
                  }
               }
               else
               {
                  §§push(param1.height);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc9_)
                     {
                        addr73:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(param1.premultipliedAlpha);
                     if(_loc8_ || param2)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(_loc8_ || this)
                     {
                        super(_loc5_,_loc6_,16777215,_loc7_);
                        loop0:
                        while(true)
                        {
                           this.§5@§ = param1;
                           loop1:
                           while(true)
                           {
                              §§push(param3);
                              if(!_loc9_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 §§push(this);
                                 if(_loc8_)
                                 {
                                    if(Starling.isSoftware)
                                    {
                                       addr191:
                                       §§push(§=!C§.§1l§);
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(§=!C§.§!!N§);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    §§pop().§@!U§ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       this.§`>§ = true;
                                       loop9:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             this.§<!K§ = param2;
                                             while(true)
                                             {
                                                this.§0!5§ = this.§<!K§;
                                                while(_loc8_ || param1)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      this.§[!V§ = new VertexData(4,_loc7_);
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ || this))
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr146:
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr224:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            if(!_loc9_)
                                                            {
                                                               if(Starling.isSoftware)
                                                               {
                                                                  addr231:
                                                                  §§push(§=!C§.NONE);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc8_ || param3))
                                                                     {
                                                                        addr260:
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§=!C§.§1l§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                               §§pop().§@!U§ = §§pop();
                                                               do
                                                               {
                                                                  continue loop4;
                                                               }
                                                               while(!(_loc8_ || param1));
                                                               
                                                               continue loop1;
                                                            }
                                                            §§goto(addr231);
                                                            §§goto(addr146);
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop8;
                                                   if(!(_loc8_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr112);
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                    addr217:
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                     §§goto(addr217);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr60);
         }
         §§goto(addr30);
      }
      
      public static function §8;§(param1:Context3D, param2:Bitmap) : §-m§
      {
         return new §-m§(Texture.§8;§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`>§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super.updateVertexData(param1,param2,param3,param4);
         }
         loop0:
         do
         {
            §;H§.setTexCoords(0,0,0);
            while(true)
            {
               §;H§.setTexCoords(1,1,0);
               while(_loc5_)
               {
                  §;H§.setTexCoords(2,0,1);
                  do
                  {
                     §;H§.setTexCoords(3,1,1);
                  }
                  while(!(_loc5_ || param3));
                  
                  if(_loc5_ || param3)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc5_);
         
      }
      
      private function §3e§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §;H§.copyTo(this.§[!V§,0,1,this.§<!K§ || param1,null);
         }
         do
         {
            this.§5@§.adjustVertexData(this.§[!V§,0,4);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §4o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.frame;
         if(_loc5_)
         {
            if(_loc1_)
            {
               addr27:
               §§push(Number(_loc1_.width));
               if(_loc5_ || _loc1_)
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr48:
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr56);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr48);
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  addr63:
                  §§push(Number(_loc1_.height));
                  if(!_loc4_)
                  {
                     addr92:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr89:
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        §§goto(addr92);
                     }
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr89);
                  }
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  §;H§.setPosition(0,0,0);
                  while(true)
                  {
                     §;H§.setPosition(1,_loc2_,0);
                     loop1:
                     for(; !(_loc4_ && _loc2_); if(_loc4_ && _loc1_)
                     {
                        continue;
                     },§§goto(addr130))
                     {
                        §;H§.setPosition(2,0,_loc3_);
                        while(true)
                        {
                           §;H§.setPosition(3,_loc2_,_loc3_);
                           loop3:
                           while(!(_loc4_ && _loc2_))
                           {
                              continue loop1;
                              while(true)
                              {
                                 this.§3e§();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr130);
            }
            §§goto(addr63);
         }
         §§goto(addr27);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §;H§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§3e§();
         }
         while(_loc3_ && this);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(!(_loc3_ && this))
         {
            §;H§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§[!V§.copyTo(param1,param2,param3,this.§<!K§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§5@§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§5@§)
               {
                  loop1:
                  while(true)
                  {
                     this.§5@§ = param1;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §;H§.setPremultipliedAlpha(this.§5@§.premultipliedAlpha);
                           do
                           {
                              this.§3e§();
                           }
                           while(_loc2_ && _loc2_);
                           
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_ || this)
                              {
                                 break loop0;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr100);
                  }
               }
               return;
            }
            addr100:
            throw new ArgumentError("Texture cannot be null");
         }
         §§goto(addr89);
      }
      
      public function get smoothing() : String
      {
         return this.§@!U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!§=!C§.§,;§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§@!U§ = param1;
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
            this.§3e§();
         }
         while(_loc3_);
         
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexAlpha(param1,param2);
         }
         do
         {
            this.§3e§();
         }
         while(_loc4_ && this);
         
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            param1.batchQuad(this,param2,this.§5@§,this.§@!U§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<!K§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§<!K§ = true;
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        super.color = param1;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 this.§3e§();
                                 if(_loc3_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        §§goto(addr60);
                     }
                     addr61:
                  }
                  else
                  {
                     while(true)
                     {
                        this.§<!K§ = this.§0!5§;
                     }
                     addr84:
                  }
                  while(true)
                  {
                     §§goto(addr61);
                  }
               }
            }
            §§goto(addr84);
         }
         addr60:
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§5@§.clippedBitmapData;
      }
   }
}
