package §`g§
{
   import §2m§.§<!?§;
   import §2m§.§@>§;
   import §7H§.§'!w§;
   import §?]§.§7l§;
   import §?]§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"<§ extends § O§
   {
       
      
      private var §!=§:Texture;
      
      private var §>!1§:String;
      
      private var §7!W§:Boolean;
      
      private var §1!!§:Boolean;
      
      private var §'!?§:§'!w§;
      
      private var §^!T§:Boolean;
      
      public function §"<§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(!_loc9_)
            {
            }
            addr41:
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(param1.width);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc9_ || param1)
               {
                  §§goto(addr41);
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc9_ || param3)
         {
            if(_loc4_)
            {
               addr52:
               §§push(Number(_loc4_.height));
               if(_loc9_ || param3)
               {
               }
               addr75:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param1.height);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param2)
                  {
                     §§goto(addr75);
                  }
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.premultipliedAlpha);
            if(_loc9_ || param1)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!_loc8_)
            {
               super(_loc5_,_loc6_,16777215,_loc7_);
               loop0:
               while(true)
               {
                  this.§!=§ = param1;
                  loop1:
                  while(true)
                  {
                     if(param3)
                     {
                        §§push(this);
                        if(!_loc8_)
                        {
                           if(§<!?§.§@!_§)
                           {
                              addr191:
                              §§push(§7l§.§6!%§);
                              if(_loc9_ || this)
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr213:
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(§7l§.§`!,§);
                              if(_loc9_ || param2)
                              {
                                 §§goto(addr213);
                              }
                           }
                           §§pop().§>!1§ = §§pop();
                           while(true)
                           {
                              this.§^!T§ = true;
                              loop3:
                              for(; !(_loc8_ && param3); if(!(_loc9_ || param1))
                              {
                                 continue;
                              },if(_loc8_)
                              {
                                 continue loop0;
                              },§§goto(addr115))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§7!W§ = param2;
                                    loop5:
                                    while(true)
                                    {
                                       this.§1!!§ = this.§7!W§;
                                       loop6:
                                       while(!_loc8_)
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             continue loop1;
                                          }
                                          addr219:
                                          while(true)
                                          {
                                             §§push(this);
                                             if(_loc9_)
                                             {
                                                if(§<!?§.§@!_§)
                                                {
                                                   addr225:
                                                   §§push(§7l§.NONE);
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc9_ || param2)
                                                      {
                                                         addr258:
                                                         §§pop().§>!1§ = §§pop();
                                                         break loop6;
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   addr257:
                                                   §§push(§§pop());
                                                }
                                                else
                                                {
                                                   §§push(§7l§.§6!%§);
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr257);
                                                   }
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr225);
                                          }
                                          loop7:
                                          while(_loc9_ || param3)
                                          {
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   this.§#!3§(true);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop7;
                                                }
                                                return;
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr219);
                  }
               }
            }
            §§goto(addr142);
         }
         §§goto(addr52);
      }
      
      public static function §`!s§(param1:Context3D, param2:Bitmap) : §"<§
      {
         return new §"<§(Texture.§`!s§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^!T§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super.updateVertexData(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §[!K§.setTexCoords(0,0,0);
               loop1:
               while(true)
               {
                  §[!K§.setTexCoords(1,1,0);
                  while(!_loc6_)
                  {
                     §[!K§.setTexCoords(2,0,1);
                     loop3:
                     while(_loc5_ || param1)
                     {
                        while(true)
                        {
                           §[!K§.setTexCoords(3,1,1);
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §#!3§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §[!K§.copyTo(this.§'!?§,0,1,this.§7!W§ || param1,null);
         }
         do
         {
            this.§!=§.adjustVertexData(this.§'!?§,0,4);
         }
         while(_loc3_);
         
      }
      
      public function §2H§() : void
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
               if(_loc5_ && _loc2_)
               {
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     addr44:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     if(_loc1_)
                     {
                        addr55:
                        §§push(Number(_loc1_.height));
                        if(_loc4_)
                        {
                           addr84:
                           §§push(Number(§§pop()));
                        }
                        else
                        {
                           addr76:
                           §§push(Number(§§pop()));
                           if(_loc4_ || _loc2_)
                           {
                              §§goto(addr84);
                           }
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §[!K§.setPosition(0,0,0);
                           loop0:
                           while(true)
                           {
                              §[!K§.setPosition(1,_loc2_,0);
                              addr155:
                              while(true)
                              {
                                 §[!K§.setPosition(2,0,_loc3_);
                                 addr110:
                                 if(_loc4_ || _loc3_)
                                 {
                                    return;
                                    addr117:
                                 }
                              }
                              while(true)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr155);
                           }
                        }
                        §§goto(addr148);
                     }
                     else
                     {
                        §§push(this.texture.height);
                        if(!_loc5_)
                        {
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr55);
               }
            }
            §§goto(addr44);
         }
         §§goto(addr25);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §[!K§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§#!3§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_ || _loc3_)
         {
            §[!K§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§'!w§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§'!?§.copyTo(param1,param2,param3,this.§7!W§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§!=§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && _loc2_))
         {
            if(param1 == null)
            {
               if(_loc6_ || _loc3_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
            }
            if(param1 != this.§!=§)
            {
               if(_loc6_ || param1)
               {
                  addr63:
                  this.§!=§ = param1;
               }
               _loc2_ = this.texture.frame;
               if(!(_loc5_ && _loc3_))
               {
                  if(!_loc2_)
                  {
                     §§push(this.texture);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().width);
                        if(_loc6_ || this)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr189:
                        }
                        loop2:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop3:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§push(this.texture);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().height);
                                 if(_loc6_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr143:
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc4_ = §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   this.updateVertexData(_loc3_,_loc4_,color,this.§!=§.premultipliedAlpha);
                                                   while(_loc6_)
                                                   {
                                                      this.§#!3§();
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               if(true)
                                                               {
                                                                  return;
                                                               }
                                                               addr192:
                                                               continue loop6;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   addr122:
                                                   while(true)
                                                   {
                                                      §§push(Number(_loc2_.height));
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr167:
                                                while(true)
                                                {
                                                   §§push(Number(_loc2_.width));
                                                   if(!(_loc5_ && this))
                                                   {
                                                      break loop4;
                                                   }
                                                   break loop4;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr122);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr192);
         }
         §§goto(addr63);
      }
      
      public function get smoothing() : String
      {
         return this.§>!1§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!§7l§.§7"#§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(!_loc2_)
            {
               this.§>!1§ = param1;
            }
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§#!3§();
         }
         while(!_loc3_);
         
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§#!3§();
            }
            while(_loc3_);
            
         }
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            param1.batchQuad(this,param2,this.§!=§,this.§>!1§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§7!W§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push((param1 & 16777215) == 16777215);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           this.§7!W§ = this.§1!!§;
                        }
                        loop1:
                        while(true)
                        {
                           addr40:
                           while(true)
                           {
                              super.color = param1;
                              loop3:
                              while(_loc3_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§#!3§();
                                       if(_loc3_ || _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    addr63:
                                 }
                                 else
                                 {
                                    addr122:
                                 }
                                 while(true)
                                 {
                                    §§push(alpha == 1);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr123);
                                 }
                                 addr123:
                              }
                              continue loop1;
                              addr77:
                           }
                        }
                        addr107:
                     }
                     else
                     {
                        this.§7!W§ = true;
                     }
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr77);
                        }
                        else
                        {
                           §§goto(addr107);
                        }
                     }
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr63);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.alpha = param1;
            loop0:
            while(true)
            {
               §§push((color & 16777215) == 16777215);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr104:
                        while(true)
                        {
                           §§push(alpha == 1);
                           if(_loc2_ && _loc3_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           while(true)
                           {
                              this.§7!W§ = this.§1!!§;
                           }
                           addr90:
                        }
                        loop5:
                        while(true)
                        {
                           addr24:
                           while(true)
                           {
                              this.§#!3§();
                              if(!(_loc2_ && param1))
                              {
                                 break;
                              }
                              continue loop5;
                              addr62:
                           }
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           §§goto(addr104);
                        }
                        addr94:
                     }
                     else
                     {
                        this.§7!W§ = true;
                     }
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr62);
                        }
                        else
                        {
                           §§goto(addr94);
                        }
                     }
                  }
                  if(!_loc2_)
                  {
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!=§.clippedBitmapData;
      }
   }
}
