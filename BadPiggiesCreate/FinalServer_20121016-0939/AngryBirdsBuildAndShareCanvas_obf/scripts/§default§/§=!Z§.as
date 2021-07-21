package §default§
{
   import §3W§.§>!-§;
   import §6p§.§5!W§;
   import §6p§.§?%§;
   import §7R§.§=!O§;
   import §7R§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!Z§ extends §^$§
   {
       
      
      private var §+!m§:Texture;
      
      private var §;";§:String;
      
      private var §@!E§:Boolean;
      
      private var §'!s§:Boolean;
      
      private var §0!a§:§>!-§;
      
      private var §3z§:Boolean;
      
      public function §=!Z§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(_loc9_ && param2)
            {
            }
         }
         else
         {
            §§push(param1.width);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc9_)
               {
                  if(_loc4_)
                  {
                     addr46:
                     §§push(Number(_loc4_.height));
                     if(!_loc9_)
                     {
                        addr64:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.height);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc9_ && param1))
                        {
                           §§goto(addr64);
                        }
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(!(_loc9_ && param1))
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
                        this.§+!m§ = param1;
                        loop1:
                        while(true)
                        {
                           if(param3)
                           {
                              §§push(this);
                              if(!(_loc9_ && param3))
                              {
                                 if(§?%§.§ !J§)
                                 {
                                    addr183:
                                    §§push(§=!O§.§;!U§);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                       }
                                       addr196:
                                       §§pop().§;";§ = §§pop();
                                       while(true)
                                       {
                                          this.§3z§ = true;
                                          loop3:
                                          while(_loc8_ || param1)
                                          {
                                             while(true)
                                             {
                                                addr145:
                                                while(true)
                                                {
                                                   this.§@!E§ = param2;
                                                   addr149:
                                                   loop7:
                                                   while(!(_loc9_ && this))
                                                   {
                                                      this.§'!s§ = this.§@!E§;
                                                      while(_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr137:
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            this.§0!a§ = new §>!-§(4,_loc7_);
                                                            continue loop0;
                                                         }
                                                         addr201:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            if(!_loc9_)
                                                            {
                                                               if(§?%§.§ !J§)
                                                               {
                                                                  addr207:
                                                                  §§push(§=!O§.NONE);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc9_ && param2)
                                                                     {
                                                                        addr224:
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§=!O§.§;!U§);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr224);
                                                                  }
                                                               }
                                                               §§pop().§;";§ = §§pop();
                                                               break loop7;
                                                            }
                                                            §§goto(addr207);
                                                            §§goto(addr137);
                                                         }
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§=!O§.§ l§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr201);
                        }
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr46);
            }
         }
         §§goto(addr40);
      }
      
      public static function §5s§(param1:Context3D, param2:Bitmap) : §=!Z§
      {
         return new §=!Z§(Texture.§5s§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§3z§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §8!m§.setTexCoords(0,0,0);
               while(_loc5_ || this)
               {
                  §8!m§.setTexCoords(1,1,0);
                  do
                  {
                     §8!m§.setTexCoords(2,0,1);
                     do
                     {
                        §8!m§.setTexCoords(3,1,1);
                     }
                     while(!(_loc5_ || param2));
                     
                  }
                  while(!_loc5_);
                  
                  if(_loc6_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §1!v§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §8!m§.copyTo(this.§0!a§,0,1,this.§@!E§ || param1,null);
         }
         do
         {
            this.§+!m§.adjustVertexData(this.§0!a§,0,4);
         }
         while(!_loc2_);
         
      }
      
      public function §<V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.frame;
         if(_loc4_ || _loc2_)
         {
            if(_loc1_)
            {
               §§goto(addr30);
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc5_)
               {
                  §§goto(addr41);
               }
            }
            §§goto(addr44);
         }
         addr30:
         §§push(Number(_loc1_.width));
         if(!_loc5_)
         {
            addr44:
            §§push(Number(§§pop()));
         }
         else
         {
            addr41:
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               §§goto(addr44);
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc1_)
            {
               §§goto(addr75);
            }
            else
            {
               §§push(this.texture.height);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     §§goto(addr74);
                  }
                  addr75:
                  §§goto(addr50);
               }
            }
            §§goto(addr74);
         }
         addr50:
         §§push(Number(_loc1_.height));
         if(_loc4_)
         {
            addr74:
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §8!m§.setPosition(0,0,0);
         }
         loop0:
         do
         {
            §8!m§.setPosition(1,_loc2_,0);
            while(true)
            {
               §8!m§.setPosition(2,0,_loc3_);
               while(_loc4_ || _loc1_)
               {
                  §8!m§.setPosition(3,_loc2_,_loc3_);
                  while(_loc4_ || this)
                  {
                     this.§1!v§();
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc5_ && _loc3_);
         
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §8!m§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§1!v§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(!(_loc4_ && this))
         {
            §8!m§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§>!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§0!a§.copyTo(param1,param2,param3,this.§@!E§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§+!m§;
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
               if(!_loc6_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               addr50:
               _loc2_ = this.texture.frame;
               if(_loc5_ || this)
               {
                  if(!_loc2_)
                  {
                     §§push(this.texture);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().width);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop2:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(Number(_loc2_.height));
                                       if(!(_loc6_ && this))
                                       {
                                          addr154:
                                          §§push(Number(§§pop()));
                                       }
                                       else
                                       {
                                          addr137:
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr154);
                                          }
                                       }
                                       if(!_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          loop4:
                                          for(; !(_loc6_ && _loc3_); while(true)
                                          {
                                             this.updateVertexData(_loc3_,_loc4_,color,this.§+!m§.premultipliedAlpha);
                                             do
                                             {
                                                this.§1!v§();
                                             }
                                             while(!(_loc5_ || _loc2_));
                                             
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                break;
                                             }
                                             if(!(_loc6_ && this))
                                             {
                                                continue;
                                             }
                                             addr168:
                                             while(true)
                                             {
                                                §§push(Number(_loc2_.width));
                                                break loop3;
                                             }
                                          })
                                          {
                                             while(true)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          continue;
                                          addr158:
                                       }
                                       break;
                                    }
                                    §§goto(addr158);
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
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr154);
                              }
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr165);
            }
            else
            {
               addr36:
               if(param1 != this.§+!m§)
               {
                  if(!(_loc6_ && this))
                  {
                     this.§+!m§ = param1;
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr196);
         }
         §§goto(addr36);
      }
      
      public function get smoothing() : String
      {
         return this.§;";§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!§=!O§.§!!Q§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§;";§ = param1;
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
               this.§1!v§();
            }
            while(!(_loc4_ || param2));
            
         }
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
            this.§1!v§();
         }
         while(_loc4_);
         
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            param1.batchQuad(this,param2,this.§+!m§,this.§;";§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§@!E§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§@!E§ = true;
               loop0:
               while(true)
               {
                  if(!_loc3_)
                  {
                     loop1:
                     while(true)
                     {
                        super.color = param1;
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              this.§1!v§();
                              if(!_loc3_)
                              {
                                 return;
                                 addr38:
                              }
                              continue;
                           }
                           addr72:
                           while(true)
                           {
                              this.§@!E§ = this.§'!s§;
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     addr39:
                  }
                  while(true)
                  {
                     §§goto(addr39);
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr38);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§+!m§.clippedBitmapData;
      }
   }
}
