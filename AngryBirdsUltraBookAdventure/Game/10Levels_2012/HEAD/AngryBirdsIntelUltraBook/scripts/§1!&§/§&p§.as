package §1!&§
{
   import §"$§.RenderSupport;
   import §"$§.Starling;
   import §'_§.§'h§;
   import §'_§.Texture;
   import §@2§.VertexData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&p§ extends §!!9§
   {
       
      
      private var §!!!§:Texture;
      
      private var §%U§:String;
      
      private var §!y§:Boolean;
      
      private var §,!+§:Boolean;
      
      private var §%k§:VertexData;
      
      private var §7j§:Boolean;
      
      public function §&p§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
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
                           this.§!!!§ = param1;
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
                                       §§push(§'h§.§?!4§);
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
                                       §§push(§'h§.§^`§);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                    §§pop().§%U§ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       this.§7j§ = true;
                                       loop9:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             this.§!y§ = param2;
                                             while(true)
                                             {
                                                this.§,!+§ = this.§!y§;
                                                while(_loc8_ || param1)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      this.§%k§ = new VertexData(4,_loc7_);
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
                                                                  §§push(§'h§.NONE);
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
                                                                  §§push(§'h§.§?!4§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                               §§pop().§%U§ = §§pop();
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
      
      public static function §3!R§(param1:Context3D, param2:Bitmap) : §&p§
      {
         return new §&p§(Texture.§3!R§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7j§;
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
            §%?§.setTexCoords(0,0,0);
            while(true)
            {
               §%?§.setTexCoords(1,1,0);
               while(_loc5_)
               {
                  §%?§.setTexCoords(2,0,1);
                  do
                  {
                     §%?§.setTexCoords(3,1,1);
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
      
      private function §#6§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §%?§.copyTo(this.§%k§,0,1,this.§!y§ || param1,null);
         }
         do
         {
            this.§!!!§.adjustVertexData(this.§%k§,0,4);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §9!c§() : void
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
                  §%?§.setPosition(0,0,0);
                  while(true)
                  {
                     §%?§.setPosition(1,_loc2_,0);
                     loop1:
                     for(; !(_loc4_ && _loc2_); if(_loc4_ && _loc1_)
                     {
                        continue;
                     },§§goto(addr130))
                     {
                        §%?§.setPosition(2,0,_loc3_);
                        while(true)
                        {
                           §%?§.setPosition(3,_loc2_,_loc3_);
                           loop3:
                           while(!(_loc4_ && _loc2_))
                           {
                              continue loop1;
                              while(true)
                              {
                                 this.§#6§();
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
            §%?§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§#6§();
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
            §%?§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§%k§.copyTo(param1,param2,param3,this.§!y§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§!!!§;
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
               while(param1 != this.§!!!§)
               {
                  loop1:
                  while(true)
                  {
                     this.§!!!§ = param1;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §%?§.setPremultipliedAlpha(this.§!!!§.premultipliedAlpha);
                           do
                           {
                              this.§#6§();
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
         return this.§%U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!§'h§.§ '§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§%U§ = param1;
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
            this.§#6§();
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
            this.§#6§();
         }
         while(_loc4_ && this);
         
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            param1.batchQuad(this,param2,this.§!!!§,this.§%U§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§!y§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§!y§ = true;
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
                                 this.§#6§();
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
                        this.§!y§ = this.§,!+§;
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
         return this.§!!!§.clippedBitmapData;
      }
   }
}
