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
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(!(_loc9_ && param1))
            {
               addr45:
               §§push(Number(§§pop()));
            }
            else
            {
               addr37:
               §§push(Number(§§pop()));
               if(!(_loc9_ && this))
               {
                  §§goto(addr45);
               }
            }
         }
         else
         {
            §§push(param1.width);
            if(!_loc9_)
            {
               §§goto(addr37);
            }
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            if(_loc4_)
            {
               addr51:
               §§push(Number(_loc4_.height));
               if(!_loc9_)
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr61:
                  §§push(Number(§§pop()));
                  if(_loc8_ || param3)
                  {
                     §§goto(addr69);
                  }
               }
            }
            else
            {
               §§push(param1.height);
               if(_loc8_)
               {
                  §§goto(addr61);
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.premultipliedAlpha);
            if(_loc8_ || param2)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc9_ && param2))
            {
               super(_loc5_,_loc6_,16777215,_loc7_);
               while(true)
               {
                  this.§!=§ = param1;
                  loop1:
                  while(true)
                  {
                     if(param3)
                     {
                        §§push(this);
                        if(!(_loc9_ && param1))
                        {
                           if(§<!?§.§@!_§)
                           {
                              addr186:
                              §§push(§7l§.§6!%§);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 if(_loc8_ || this)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(§7l§.§`!,§);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           §§pop().§>!1§ = §§pop();
                           do
                           {
                              if(!_loc9_)
                              {
                                 this.§^!T§ = true;
                                 loop3:
                                 do
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§7!W§ = param2;
                                          loop4:
                                          while(true)
                                          {
                                             this.§1!!§ = this.§7!W§;
                                             do
                                             {
                                                this.§'!?§ = new §'!w§(4,_loc7_);
                                                continue loop4;
                                             }
                                             while(!_loc8_);
                                             
                                             continue loop3;
                                          }
                                       }
                                       addr155:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          if(_loc8_)
                                          {
                                             if(§<!?§.§@!_§)
                                             {
                                                addr217:
                                                §§push(§7l§.NONE);
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc8_)
                                                   {
                                                      addr250:
                                                      §§pop().§>!1§ = §§pop();
                                                      continue loop1;
                                                   }
                                                   §§goto(addr250);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§7l§.§6!%§);
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§goto(addr250);
                                                }
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr217);
                                       }
                                       addr211:
                                    }
                                 }
                                 while(!(_loc8_ || param3));
                                 
                                 continue;
                              }
                              continue loop1;
                           }
                           while(_loc9_ && param1);
                           
                           return;
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr211);
                  }
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr148);
               }
            }
            while(true)
            {
               §§goto(addr155);
            }
         }
         §§goto(addr51);
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
         if(_loc5_)
         {
            super.updateVertexData(param1,param2,param3,param4);
         }
         while(true)
         {
            §[!K§.setTexCoords(0,0,0);
            loop1:
            while(_loc5_)
            {
               §[!K§.setTexCoords(1,1,0);
               while(true)
               {
                  §[!K§.setTexCoords(2,0,1);
                  while(_loc5_ || this)
                  {
                     §[!K§.setTexCoords(3,1,1);
                     if(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §#!3§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §[!K§.copyTo(this.§'!?§,0,1,this.§7!W§ || param1,null);
            do
            {
               this.§!=§.adjustVertexData(this.§'!?§,0,4);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §2H§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.frame;
         if(!(_loc5_ && this))
         {
            if(_loc1_)
            {
               addr30:
               §§push(Number(_loc1_.width));
               if(_loc5_ && this)
               {
               }
               addr54:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc2_))
                  {
                     §§goto(addr54);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc5_)
            {
               if(_loc1_)
               {
                  addr95:
                  §§push(Number(_loc1_.height));
                  if(_loc4_)
                  {
                     addr94:
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_)
                  {
                     §[!K§.setPosition(0,0,0);
                     loop0:
                     while(true)
                     {
                        §[!K§.setPosition(1,_loc2_,0);
                        loop1:
                        while(true)
                        {
                           §[!K§.setPosition(2,0,_loc3_);
                           while(!_loc5_)
                           {
                              §[!K§.setPosition(3,_loc2_,_loc3_);
                              loop3:
                              while(!_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§#!3§();
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
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
                  §§goto(addr134);
               }
               else
               {
                  §§push(this.texture.height);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || _loc1_)
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr95);
         }
         §§goto(addr30);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §[!K§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§#!3§();
            }
            while(_loc4_ && param2);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(_loc3_ || param1)
         {
            §[!K§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§'!w§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc5_ || _loc3_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               addr57:
               this.§!=§ = param1;
               _loc2_ = this.texture.frame;
               if(_loc5_ || _loc3_)
               {
                  if(!_loc2_)
                  {
                     §§push(this.texture);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().width);
                        if(!(_loc6_ && this))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr166:
                              loop8:
                              while(true)
                              {
                                 §§push(Number(_loc2_.width));
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(Number(_loc2_.height));
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr151:
                                                   §§push(Number(§§pop()));
                                                }
                                                else
                                                {
                                                   addr144:
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      addr149:
                                                      if(!_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             while(true)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   this.updateVertexData(_loc3_,_loc4_,color,this.§!=§.premultipliedAlpha);
                                                   do
                                                   {
                                                      this.§#!3§();
                                                   }
                                                   while(!_loc5_);
                                                   
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      while(false)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr191:
                                                      return;
                                                      addr97:
                                                   }
                                                   continue loop4;
                                                }
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
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§goto(addr144);
                                             }
                                          }
                                          §§goto(addr149);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr188);
                     }
                  }
                  §§goto(addr166);
               }
               §§goto(addr97);
            }
            else if(param1 != this.§!=§)
            {
               if(_loc5_ || param1)
               {
               }
               §§goto(addr57);
            }
            §§goto(addr191);
         }
         §§goto(addr57);
      }
      
      public function get smoothing() : String
      {
         return this.§>!1§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§7l§.§7"#§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§>!1§ = param1;
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
               this.§#!3§();
            }
            while(_loc3_);
            
         }
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
               this.§#!3§();
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push((param1 & 16777215) == 16777215);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr117:
                     while(true)
                     {
                        §§push(alpha == 1);
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§7!W§ = true;
                     loop4:
                     while(true)
                     {
                        if(_loc2_ || param1)
                        {
                           while(true)
                           {
                           }
                           addr76:
                        }
                        else
                        {
                           while(true)
                           {
                              this.§7!W§ = this.§1!!§;
                              while(_loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    return;
                                 }
                              }
                              §§goto(addr117);
                           }
                           addr102:
                        }
                        while(true)
                        {
                           super.color = param1;
                           while(_loc2_)
                           {
                              this.§#!3§();
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr38);
                           }
                           continue loop4;
                        }
                     }
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr76);
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
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr119:
                        while(true)
                        {
                           §§push(alpha == 1);
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                     }
                     addr118:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           this.§7!W§ = this.§1!!§;
                        }
                        do
                        {
                           loop3:
                           while(true)
                           {
                              this.§#!3§();
                              if(!(_loc2_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop0;
                              addr72:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        while(!(_loc3_ || param1));
                        
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     this.§7!W§ = true;
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr118);
            }
         }
         §§goto(addr72);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!=§.clippedBitmapData;
      }
   }
}
