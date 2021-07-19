package §!!U§
{
   import §&#H§.§%"H§;
   import §&#H§.§3#J§;
   import §&v§.§ +§;
   import §&v§.Texture;
   import §=]§.§%"G§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#"t§ extends §2"D§
   {
       
      
      private var §^"R§:Texture;
      
      private var § "A§:String;
      
      private var §8!F§:Boolean;
      
      private var §'"m§:Boolean;
      
      private var §"!_§:§%"G§;
      
      private var §3" §:Boolean;
      
      public function §#"t§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            addr37:
            §§push(Number(_loc4_.width));
            if(_loc9_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               if(_loc4_)
               {
                  addr42:
                  §§push(Number(_loc4_.height));
                  if(_loc9_ || param1)
                  {
                     addr65:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr57:
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && param3))
                     {
                        §§goto(addr65);
                     }
                  }
               }
               else
               {
                  §§push(param1.height);
                  if(!_loc8_)
                  {
                     §§goto(addr57);
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(!_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc9_ || this)
               {
                  super(_loc5_,_loc6_,16777215,_loc7_);
                  while(true)
                  {
                     this.§^"R§ = param1;
                     loop1:
                     while(true)
                     {
                        if(param3)
                        {
                           §§push(this);
                           if(_loc9_ || param2)
                           {
                              if(§3#J§.§3!s§)
                              {
                                 addr186:
                                 §§push(§ +§.§1#B§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       addr198:
                                       §§push(§§pop());
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§ +§.§5!^§);
                                 if(_loc9_)
                                 {
                                    §§goto(addr198);
                                 }
                              }
                              §§pop().§ "A§ = §§pop();
                              loop2:
                              while(true)
                              {
                                 this.§3" § = true;
                                 loop3:
                                 while(true)
                                 {
                                    if(!(_loc8_ && param3))
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          this.§8!F§ = param2;
                                          loop5:
                                          while(_loc9_)
                                          {
                                             this.§'"m§ = this.§8!F§;
                                             loop6:
                                             while(_loc9_ || param3)
                                             {
                                                this.§"!_§ = new §%"G§(4,_loc7_);
                                                loop7:
                                                while(_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§3!E§(true);
                                                      if(_loc9_ || param3)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   return;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                if(_loc9_)
                                                {
                                                   if(§3#J§.§3!s§)
                                                   {
                                                      addr210:
                                                      §§push(§ +§.NONE);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc8_)
                                                         {
                                                            addr228:
                                                            §§pop().§ "A§ = §§pop();
                                                            continue loop4;
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§ +§.§1#B§);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr210);
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr153:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr153);
                                    }
                                 }
                              }
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr204);
                     }
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr139);
            }
            §§goto(addr42);
         }
         else
         {
            §§push(param1.width);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§goto(addr36);
               }
               §§goto(addr37);
            }
         }
         §§goto(addr36);
      }
      
      public static function §`"J§(param1:Context3D, param2:Bitmap) : §#"t§
      {
         return new §#"t§(Texture.§`"J§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§3" §;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.updateVertexData(param1,param2,param3,param4);
            do
            {
               §;q§.setTexCoords(0,0,0);
               loop1:
               do
               {
                  §;q§.setTexCoords(1,1,0);
                  while(true)
                  {
                     §;q§.setTexCoords(2,0,1);
                     while(!_loc6_)
                     {
                        §;q§.setTexCoords(3,1,1);
                        if(_loc5_ || this)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!_loc5_);
               
            }
            while(!(_loc5_ || param3));
            
         }
      }
      
      private function §3!E§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §;q§.copyTo(this.§"!_§,0,1,this.§8!F§ || param1,null);
         }
         do
         {
            this.§^"R§.adjustVertexData(this.§"!_§,0,4);
         }
         while(_loc2_);
         
      }
      
      public function §+!l§(param1:Vector.<Point>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §;q§.setPosition(0,param1[0].x,param1[0].y);
            while(true)
            {
               §;q§.setPosition(1,param1[1].x,param1[1].y);
               addr88:
               while(true)
               {
                  §;q§.setPosition(2,param1[2].x,param1[2].y);
               }
            }
            addr110:
         }
         loop2:
         while(true)
         {
            §;q§.setPosition(3,param1[3].x,param1[3].y);
            while(true)
            {
               if(!(_loc2_ || _loc2_))
               {
                  continue loop2;
               }
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr110);
            }
            §§goto(addr88);
         }
      }
      
      public function §#"i§() : void
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
               if(_loc4_)
               {
                  addr44:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr41:
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     §§goto(addr44);
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  if(_loc1_)
                  {
                     addr55:
                     §§push(Number(_loc1_.height));
                     if(_loc4_ || _loc2_)
                     {
                     }
                     addr89:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(this.texture.height);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_ || _loc1_)
                        {
                           §§goto(addr89);
                        }
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && _loc2_))
                  {
                     §;q§.setPosition(0,0,0);
                     loop0:
                     while(true)
                     {
                        §;q§.setPosition(1,_loc2_,0);
                        while(true)
                        {
                           §;q§.setPosition(2,0,_loc3_);
                           loop2:
                           while(_loc4_ || _loc2_)
                           {
                              §;q§.setPosition(3,_loc2_,_loc3_);
                              while(_loc4_)
                              {
                                 this.§3!E§();
                                 if(_loc4_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       return;
                                       addr115:
                                    }
                                    continue loop2;
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr55);
            }
            else
            {
               §§push(this.texture.width);
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr41);
               }
            }
            §§goto(addr44);
         }
         §§goto(addr25);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §;q§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§3!E§();
         }
         while(_loc3_);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(!(_loc3_ && _loc2_))
         {
            §;q§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§%"G§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§"!_§.copyTo(param1,param2,param3,this.§8!F§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§^"R§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && this))
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
            }
            if(param1 != this.§^"R§)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§^"R§ = param1;
                  addr55:
                  _loc2_ = this.texture.frame;
                  if(!(_loc6_ && _loc3_))
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
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr183:
                              }
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
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc5_)
                                             {
                                                addr149:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                addr149:
                                             }
                                             loop5:
                                             while(_loc5_ || param1)
                                             {
                                                _loc4_ = §§pop();
                                                loop6:
                                                for(; !_loc6_; while(_loc5_ || _loc3_)
                                                {
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(_loc2_.height));
                                                         if(_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop3;
                                                      addr119:
                                                   }
                                                   if(_loc6_ && this)
                                                   {
                                                      continue loop4;
                                                   }
                                                   this.§3!E§();
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr73);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      do
                                                      {
                                                         this.updateVertexData(_loc3_,_loc4_,color,this.§^"R§.premultipliedAlpha);
                                                         continue loop6;
                                                      }
                                                      while(false);
                                                      
                                                      §§goto(addr186);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(_loc2_.width));
                                                }
                                                §§goto(addr149);
                                             }
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr119);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr160);
               }
               §§goto(addr55);
            }
            addr186:
            return;
         }
         §§goto(addr55);
      }
      
      public function get smoothing() : String
      {
         return this.§ "A§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!§ +§.§%"_§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(!_loc3_)
            {
               this.§ "A§ = param1;
            }
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexColor(param1,param2);
            do
            {
               this.§3!E§();
            }
            while(!_loc3_);
            
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
            this.§3!E§();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.batchQuad(this,param2,this.§^"R§,this.§ "A§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§8!F§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push((param1 & 16777215) == 16777215);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§8!F§ = true;
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              super.color = param1;
                              loop6:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             this.§3!E§();
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          return;
                                          addr45:
                                       }
                                       addr83:
                                       while(true)
                                       {
                                          this.§8!F§ = this.§'"m§;
                                          break loop6;
                                       }
                                    }
                                    break;
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 if(_loc2_ && _loc2_)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                              addr63:
                              while(true)
                              {
                                 §§push(alpha == 1);
                                 if(_loc3_ || _loc2_)
                                 {
                                    break;
                                 }
                                 addr112:
                                 addr112:
                                 while(true)
                                 {
                                    §§pop();
                                    break loop5;
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr83);
                  }
                  addr81:
               }
               §§goto(addr112);
            }
         }
         §§goto(addr45);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.alpha = param1;
            loop0:
            while(true)
            {
               §§push((color & 16777215) == 16777215);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr96:
                        while(_loc2_)
                        {
                           §§push(alpha == 1);
                           if(_loc2_)
                           {
                           }
                           continue loop6;
                        }
                        continue loop0;
                     }
                     addr95:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§8!F§ = this.§'"m§;
                           }
                           addr65:
                        }
                        do
                        {
                           do
                           {
                              this.§3!E§();
                           }
                           while(_loc3_);
                           
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        return;
                     }
                     this.§8!F§ = true;
                     while(_loc2_)
                     {
                        §§goto(addr54);
                     }
                     §§goto(addr96);
                     §§goto(addr98);
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr65);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§^"R§.clippedBitmapData;
      }
   }
}
