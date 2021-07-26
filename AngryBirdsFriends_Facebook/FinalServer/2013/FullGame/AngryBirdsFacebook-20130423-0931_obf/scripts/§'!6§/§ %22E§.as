package §'!6§
{
   import §!=§.§`b§;
   import §"a§.§!"J§;
   import §"a§.§>w§;
   import §<5§.Texture;
   import §<5§.§^M§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § "E§ extends §5T§
   {
       
      
      private var §,b§:Texture;
      
      private var §#T§:String;
      
      private var §6#§:Boolean;
      
      private var §&!V§:Boolean;
      
      private var §#"G§:§`b§;
      
      private var §8"$§:Boolean;
      
      public function § "E§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ && this)
            {
            }
         }
         else
         {
            §§push(param1.width);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc8_)
               {
                  if(_loc4_)
                  {
                     addr52:
                     §§push(Number(_loc4_.height));
                     if(_loc9_ || param1)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr72:
                        §§push(Number(§§pop()));
                        if(_loc9_ || param2)
                        {
                           §§goto(addr80);
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.height);
                     if(!(_loc8_ && param2))
                     {
                        §§goto(addr72);
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(!(_loc8_ && param3))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_ || param3)
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     loop0:
                     while(true)
                     {
                        this.§,b§ = param1;
                        loop1:
                        while(true)
                        {
                           if(!param3)
                           {
                              if(_loc9_ || param3)
                              {
                                 §§push(this);
                                 if(_loc9_ || this)
                                 {
                                    if(§!"J§.§!X§)
                                    {
                                       addr230:
                                       §§push(§^M§.NONE);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                             addr258:
                                             §§pop().§#T§ = §§pop();
                                             loop2:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   this.§6#§ = param2;
                                                   loop4:
                                                   while(!_loc8_)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.§&!V§ = this.§6#§;
                                                         while(!(_loc8_ && this))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               this.§#"G§ = new §`b§(4,_loc7_);
                                                               while(_loc9_ || param2)
                                                               {
                                                                  this.§<!j§(true);
                                                                  if(_loc9_ || param3)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop4;
                                                      }
                                                      return;
                                                   }
                                                   loop5:
                                                   while(!_loc9_)
                                                   {
                                                      while(_loc9_)
                                                      {
                                                         this.§8"$§ = true;
                                                         continue loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             addr259:
                                          }
                                          §§goto(addr258);
                                       }
                                       addr257:
                                       §§push(§§pop());
                                    }
                                    else
                                    {
                                       §§push(§^M§.§#§);
                                       if(_loc9_ || param2)
                                       {
                                          §§goto(addr257);
                                       }
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr259);
                           }
                           else
                           {
                              §§push(this);
                              if(!_loc8_)
                              {
                                 if(§!"J§.§!X§)
                                 {
                                    addr182:
                                    §§push(§^M§.§#§);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_ || param3)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§^M§.§2"C§);
                                    if(_loc9_ || param3)
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 §§pop().§#T§ = §§pop();
                                 §§goto(addr206);
                              }
                              §§goto(addr182);
                           }
                        }
                     }
                  }
                  §§goto(addr165);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr46);
      }
      
      public static function §[f§(param1:Context3D, param2:Bitmap) : § "E§
      {
         return new § "E§(Texture.§[f§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§8"$§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §^!S§.setTexCoords(0,0,0);
               loop1:
               for(; _loc6_ || param3; if(!(_loc6_ || this))
               {
                  continue;
               },§§goto(addr83))
               {
                  §^!S§.setTexCoords(1,1,0);
                  while(true)
                  {
                     §^!S§.setTexCoords(2,0,1);
                     loop3:
                     while(!(_loc5_ && param1))
                     {
                        continue loop1;
                        while(true)
                        {
                           §^!S§.setTexCoords(3,1,1);
                           if(_loc6_ || param3)
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
         §§goto(addr83);
      }
      
      private function §<!j§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §^!S§.copyTo(this.§#"G§,0,1,this.§6#§ || param1,null);
            do
            {
               this.§,b§.adjustVertexData(this.§#"G§,0,4);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §"",§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.frame;
         if(!_loc4_)
         {
            if(_loc1_)
            {
               addr26:
               §§push(Number(_loc1_.width));
               if(!_loc4_)
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr37:
                  §§push(Number(§§pop()));
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr45);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc4_)
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               if(_loc1_)
               {
                  addr56:
                  §§push(Number(_loc1_.height));
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && _loc3_))
                     {
                        addr90:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        §^!S§.setPosition(0,0,0);
                        while(true)
                        {
                           §^!S§.setPosition(1,_loc2_,0);
                           loop1:
                           while(_loc5_ || _loc3_)
                           {
                              §^!S§.setPosition(2,0,_loc3_);
                              loop2:
                              while(true)
                              {
                                 §^!S§.setPosition(3,_loc2_,_loc3_);
                                 loop3:
                                 while(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.§<!j§();
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr56);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §^!S§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§<!j§();
         }
         while(!_loc3_);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_ || this)
         {
            §^!S§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§`b§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§#"G§.copyTo(param1,param2,param3,this.§6#§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§,b§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || _loc3_)
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  §§goto(addr35);
               }
               else
               {
                  addr47:
                  this.§,b§ = param1;
                  _loc2_ = this.texture.frame;
                  if(!_loc6_)
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
                                          if(_loc5_ || param1)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(Number(_loc2_.height));
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(_loc6_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr161:
                                                   §§push(Number(§§pop()));
                                                }
                                                addr162:
                                                if(_loc6_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(_loc2_.width));
                                                   break loop4;
                                                }
                                                addr175:
                                             }
                                          }
                                          loop5:
                                          for(; !_loc6_; do
                                          {
                                             this.updateVertexData(_loc3_,_loc4_,color,this.§,b§.premultipliedAlpha);
                                             do
                                             {
                                                this.§<!j§();
                                             }
                                             while(_loc6_ && param1);
                                             
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          while(false);
                                          ,return)
                                          {
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue;
                                       }
                                       §§push(this.texture);
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop().height);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(!(_loc5_ || this))
                                          {
                                             continue loop2;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc5_)
                                          {
                                             addr159:
                                             if(_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr159);
                                       §§goto(addr161);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr172);
               }
            }
            else if(param1 != this.§,b§)
            {
               if(_loc6_)
               {
               }
               §§goto(addr47);
            }
            §§goto(addr186);
         }
         addr35:
         throw new ArgumentError("Texture cannot be null");
      }
      
      public function get smoothing() : String
      {
         return this.§#T§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§^M§.§@"1§(param1))
            {
               if(!_loc3_)
               {
                  addr57:
                  this.§#T§ = param1;
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr57);
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
               this.§<!j§();
            }
            while(_loc3_ && _loc3_);
            
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
               this.§<!j§();
            }
            while(_loc4_ && param2);
            
         }
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.batchQuad(this,param2,this.§,b§,this.§#T§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§6#§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push((param1 & 16777215) == 16777215);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§6#§ = true;
                        loop3:
                        while(true)
                        {
                           addr29:
                           while(true)
                           {
                              super.color = param1;
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr99);
                  }
                  addr97:
               }
               §§goto(addr111);
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr97);
            }
         }
         §§goto(addr112);
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
                        addr104:
                        while(true)
                        {
                           §§push(alpha == 1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                     }
                     addr103:
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§6#§ = true;
                        loop7:
                        while(true)
                        {
                           addr24:
                           addr34:
                           while(true)
                           {
                              this.§<!j§();
                              if(!(_loc2_ && param1))
                              {
                                 break;
                              }
                              continue loop7;
                           }
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§goto(addr24);
                                 §§goto(addr34);
                              }
                              addr92:
                           }
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              addr64:
                           }
                           return;
                        }
                        addr55:
                     }
                     §§goto(addr64);
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr55);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,b§.clippedBitmapData;
      }
   }
}
