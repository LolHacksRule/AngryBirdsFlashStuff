package §1!$§
{
   import §'6§.§"]§;
   import §'6§.§'"3§;
   import §0!R§.§=w§;
   import §0!R§.Texture;
   import §1V§.§1!-§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!N§ extends §!"?§
   {
       
      
      private var §&M§:Texture;
      
      private var §-!2§:String;
      
      private var §[!$§:Boolean;
      
      private var §7!,§:Boolean;
      
      private var §;!L§:§1!-§;
      
      private var §5!1§:Boolean;
      
      public function §0!N§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ || param3)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            else
            {
               addr37:
               §§push(Number(§§pop()));
               if(_loc8_ || this)
               {
                  §§goto(addr45);
               }
            }
         }
         else
         {
            §§push(param1.width);
            if(_loc8_)
            {
               §§goto(addr37);
            }
         }
         var _loc5_:* = §§pop();
         if(_loc8_ || this)
         {
            if(_loc4_)
            {
               addr56:
               §§push(Number(_loc4_.height));
               if(_loc8_ || this)
               {
                  addr84:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr76:
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && param2))
                  {
                     §§goto(addr84);
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(_loc8_ || this)
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
                     this.§&M§ = param1;
                     loop1:
                     while(true)
                     {
                        if(param3)
                        {
                           §§push(this);
                           if(!_loc9_)
                           {
                              if(§"]§.§4"!§)
                              {
                                 addr186:
                                 §§push(§=w§.§8!Q§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       addr199:
                                       §§pop().§-!2§ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          this.§5!1§ = true;
                                          loop9:
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                this.§[!$§ = param2;
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      this.§7!,§ = this.§[!$§;
                                                      for(; _loc8_ || param3; this.§;!L§ = new §1!-§(4,_loc7_),do
                                                      {
                                                         this.§"!c§(true);
                                                      }
                                                      while(_loc9_);
                                                      ,if(_loc8_)
                                                      {
                                                         return;
                                                      })
                                                      {
                                                         if(_loc9_ && param2)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr155:
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                            addr204:
                                                            while(!_loc9_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr253:
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                            §§goto(addr155);
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       addr200:
                                    }
                                    §§goto(addr199);
                                 }
                                 addr198:
                                 §§push(§§pop());
                              }
                              else
                              {
                                 §§push(§=w§.§>o§);
                                 if(!_loc9_)
                                 {
                                    §§goto(addr198);
                                 }
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr204);
                     }
                  }
               }
               §§goto(addr200);
            }
            else
            {
               §§push(param1.height);
               if(_loc8_ || this)
               {
                  §§goto(addr76);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr56);
      }
      
      public static function §1!H§(param1:Context3D, param2:Bitmap) : §0!N§
      {
         return new §0!N§(Texture.§1!H§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§5!1§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.updateVertexData(param1,param2,param3,param4);
         }
         while(true)
         {
            §0E§.setTexCoords(0,0,0);
            loop1:
            while(_loc5_)
            {
               §0E§.setTexCoords(1,1,0);
               do
               {
                  §0E§.setTexCoords(2,0,1);
                  while(_loc5_ || this)
                  {
                     §0E§.setTexCoords(3,1,1);
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr41);
                  }
                  continue loop1;
               }
               while(!_loc5_);
               
               return;
            }
         }
      }
      
      private function §"!c§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §0E§.copyTo(this.§;!L§,0,1,this.§[!$§ || param1,null);
            do
            {
               this.§&M§.adjustVertexData(this.§;!L§,0,4);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §=!!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.frame;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc1_)
            {
               addr31:
               §§push(Number(_loc1_.width));
               if(!_loc4_)
               {
                  addr50:
                  §§push(Number(§§pop()));
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
                     §§goto(addr50);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_)
            {
               if(_loc1_)
               {
                  addr66:
                  §§push(Number(_loc1_.height));
                  if(_loc4_)
                  {
                  }
                  addr80:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(this.texture.height);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr80);
                     }
                  }
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  §0E§.setPosition(0,0,0);
                  loop0:
                  while(true)
                  {
                     §0E§.setPosition(1,_loc2_,0);
                     addr136:
                     while(true)
                     {
                        §0E§.setPosition(2,0,_loc3_);
                        continue loop0;
                     }
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr66);
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §0E§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§"!c§();
         }
         while(_loc4_);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(_loc3_ || _loc2_)
         {
            §0E§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§1!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§;!L§.copyTo(param1,param2,param3,this.§[!$§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§&M§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               addr47:
               this.§&M§ = param1;
               _loc2_ = this.texture.frame;
               if(!(_loc6_ && _loc2_))
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
                                    if(_loc2_)
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(Number(_loc2_.height));
                                          if(_loc6_)
                                          {
                                             addr146:
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop1;
                                             }
                                          }
                                          addr164:
                                          §§push(Number(§§pop()));
                                          if(!(_loc5_ || param1))
                                          {
                                             break;
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             this.updateVertexData(_loc3_,_loc4_,color,this.§&M§.premultipliedAlpha);
                                             while(_loc5_ || _loc3_)
                                             {
                                                this.§"!c§();
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop6;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             addr175:
                                             while(true)
                                             {
                                                §§push(Number(_loc2_.width));
                                                addr178:
                                                while(true)
                                                {
                                                   break loop4;
                                                }
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.texture);
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop().height);
                                       if(_loc5_)
                                       {
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr146);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr178);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr175);
            }
            else
            {
               addr41:
               if(param1 != this.§&M§)
               {
                  if(_loc6_)
                  {
                  }
                  §§goto(addr47);
               }
            }
            addr186:
            return;
         }
         §§goto(addr41);
      }
      
      public function get smoothing() : String
      {
         return this.§-!2§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§=w§.§;!C§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§-!2§ = param1;
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.setVertexColor(param1,param2);
            do
            {
               this.§"!c§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.setVertexAlpha(param1,param2);
         }
         do
         {
            this.§"!c§();
         }
         while(!(_loc3_ || param2));
         
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.batchQuad(this,param2,this.§&M§,this.§-!2§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§[!$§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§[!$§ = true;
               loop0:
               while(true)
               {
                  if(!(_loc3_ && this))
                  {
                     loop1:
                     while(true)
                     {
                        super.color = param1;
                        while(_loc2_)
                        {
                           this.§"!c§();
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     return;
                     addr51:
                  }
                  else
                  {
                     while(true)
                     {
                        this.§[!$§ = this.§7!,§;
                     }
                     addr77:
                  }
                  while(true)
                  {
                     §§goto(addr51);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§&M§.clippedBitmapData;
      }
   }
}
