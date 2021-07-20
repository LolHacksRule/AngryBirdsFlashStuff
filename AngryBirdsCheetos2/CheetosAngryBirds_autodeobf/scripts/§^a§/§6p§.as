package §^a§
{
   import §4v§.§40§;
   import §6;§.§%[§;
   import §6;§.§2^§;
   import §]!a§.§ !g§;
   import §]!a§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6p§ extends § !'§
   {
       
      
      private var §7Y§:Texture;
      
      private var §@=§:String;
      
      private var §=!W§:Boolean;
      
      private var §]?§:Boolean;
      
      private var §6!C§:§40§;
      
      private var §<C§:Boolean;
      
      public function §6p§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§^0§)
         {
            §§push(Number(_loc4_.width));
            if(!_loc8_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            else
            {
               addr33:
               §§push(Number(§§pop()));
               if(_loc9_ || param3)
               {
                  §§goto(addr41);
               }
            }
         }
         else
         {
            §§push(param1.width);
            if(!_loc8_)
            {
               §§goto(addr33);
            }
         }
         var _loc5_:* = §§pop();
         if(_loc9_ || param1)
         {
            if(_loc4_)
            {
               addr52:
               §§push(Number(_loc4_.height));
               if(_loc9_ || param2)
               {
                  addr75:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr67:
                  §§push(Number(§§pop()));
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr75);
                  }
               }
            }
            else
            {
               §§push(param1.height);
               if(!_loc8_)
               {
                  §§goto(addr67);
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
                  this.§7Y§ = param1;
                  loop1:
                  while(true)
                  {
                     if(!param3)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this);
                           if(_loc9_)
                           {
                              if(§%[§.§4$§)
                              {
                                 addr220:
                                 §§push(§ !g§.NONE);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || param3)
                                    {
                                    }
                                    addr243:
                                    §§pop().§@=§ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       addr156:
                                       while(true)
                                       {
                                          this.§=!W§ = param2;
                                          while(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                this.§]?§ = this.§=!W§;
                                                while(_loc9_)
                                                {
                                                   this.§6!C§ = new §40§(4,_loc7_);
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         if(_loc9_ || param3)
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                   if(!(_loc8_ && this))
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          addr210:
                                          while(true)
                                          {
                                             this.§<C§ = true;
                                             continue loop0;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§ !g§.§5!8§);
                                 if(_loc9_ || param3)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr220);
                        }
                        addr214:
                     }
                     else
                     {
                        §§push(this);
                        if(!(_loc8_ && param3))
                        {
                           if(§%[§.§4$§)
                           {
                              addr191:
                              §§push(§ !g§.§5!8§);
                              if(_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                 }
                                 addr209:
                                 §§pop().§@=§ = §§pop();
                                 §§goto(addr210);
                              }
                           }
                           else
                           {
                              §§push(§ !g§.§62§);
                              if(_loc9_ || param1)
                              {
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr210);
                  }
               }
            }
            §§goto(addr214);
         }
         §§goto(addr52);
      }
      
      public static function §?!`§(param1:Context3D, param2:Bitmap) : §6p§
      {
         return new §6p§(Texture.§?!`§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§<C§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super.updateVertexData(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §`§.setTexCoords(0,0,0);
               loop1:
               while(true)
               {
                  §`§.setTexCoords(1,1,0);
                  while(true)
                  {
                     §`§.setTexCoords(2,0,1);
                     loop3:
                     while(_loc6_ || param1)
                     {
                        continue loop0;
                        while(true)
                        {
                           §`§.setTexCoords(3,1,1);
                           if(_loc6_)
                           {
                              if(!_loc5_)
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
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §!!O§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §`§.copyTo(this.§6!C§,0,1,this.§=!W§ || param1,null);
            do
            {
               this.§7Y§.adjustVertexData(this.§6!C§,0,4);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §@j§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.§^0§;
         if(!(_loc5_ && this))
         {
            if(_loc1_)
            {
               addr30:
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
               if(!(_loc5_ && _loc1_))
               {
                  if(_loc1_)
                  {
                     addr55:
                     §§push(Number(_loc1_.height));
                     if(_loc5_)
                     {
                     }
                     addr84:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(this.texture.height);
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           §§goto(addr84);
                        }
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     §`§.setPosition(0,0,0);
                     while(true)
                     {
                        §`§.setPosition(1,_loc2_,0);
                        while(!_loc5_)
                        {
                           §`§.setPosition(2,0,_loc3_);
                           while(_loc4_)
                           {
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §`§.setPosition(3,_loc2_,_loc3_);
                     while(!_loc5_)
                     {
                        this.§!!O§();
                        if(_loc4_ || _loc2_)
                        {
                           return;
                        }
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr55);
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
         §§goto(addr30);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §`§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§!!O§();
         }
         while(_loc4_ && param1);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(!_loc3_)
         {
            §`§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§40§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§6!C§.copyTo(param1,param2,param3,this.§=!W§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§7Y§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(!(_loc5_ && _loc2_))
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               addr51:
               _loc2_ = this.texture.§^0§;
               if(!(_loc5_ && param1))
               {
                  if(!_loc2_)
                  {
                     §§push(this.texture);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().width);
                        if(_loc6_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr183:
                        }
                        addr184:
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
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 loop12:
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    addr117:
                                    §§push(Number(_loc2_.height));
                                    if(_loc6_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr152:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc5_)
                                          {
                                             while(!(_loc5_ && _loc2_))
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr152);
                                             }
                                             continue loop3;
                                             addr143:
                                          }
                                          §§goto(addr117);
                                       }
                                       addr140:
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             this.updateVertexData(_loc3_,_loc4_,color,this.§7Y§.premultipliedAlpha);
                                             while(_loc6_)
                                             {
                                                this.§!!O§();
                                                if(_loc6_ || param1)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         while(false)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr187:
                                                         return;
                                                         addr83:
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop12;
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(Number(_loc2_.width));
                     if(!(_loc5_ && _loc2_))
                     {
                        §§goto(addr184);
                     }
                     §§goto(addr183);
                  }
               }
               §§goto(addr83);
            }
            else
            {
               addr42:
               if(param1 != this.§7Y§)
               {
                  if(!_loc5_)
                  {
                     this.§7Y§ = param1;
                  }
                  §§goto(addr51);
               }
            }
            §§goto(addr187);
         }
         §§goto(addr42);
      }
      
      public function get smoothing() : String
      {
         return this.§@=§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§ !g§.§0! §(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
         }
         this.§@=§ = param1;
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
               this.§!!O§();
            }
            while(_loc3_);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§!!O§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            param1.batchQuad(this,param2,this.§7Y§,this.§@=§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§=!W§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push((param1 & 16777215) == 16777215);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr108:
                     loop6:
                     while(true)
                     {
                        §§push(alpha == 1);
                        if(_loc2_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§=!W§ = true;
                              break;
                           }
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop6;
                              }
                              this.§=!W§ = this.§]?§;
                           }
                           while(true)
                           {
                              §§goto(addr42);
                           }
                           continue loop6;
                        }
                        while(true)
                        {
                           addr42:
                           while(true)
                           {
                              super.color = param1;
                              continue loop1;
                           }
                           addr41:
                           return;
                        }
                     }
                  }
                  addr107:
               }
               §§goto(addr77);
            }
            §§goto(addr107);
         }
         §§goto(addr108);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.alpha = param1;
         }
         loop0:
         while(true)
         {
            §§push((color & 16777215) == 16777215);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§pop();
                     addr113:
                     while(true)
                     {
                        §§push(alpha == 1);
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue loop6;
                     }
                  }
                  addr112:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§=!W§ = true;
                  }
                  if(_loc3_ && param1)
                  {
                     continue loop0;
                  }
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  this.§=!W§ = this.§]?§;
                  continue loop0;
               }
               loop5:
               while(true)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        this.§!!O§();
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop5;
                     }
                     addr23:
                  }
                  continue loop0;
               }
            }
            §§goto(addr112);
         }
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§7Y§.clippedBitmapData;
      }
   }
}
