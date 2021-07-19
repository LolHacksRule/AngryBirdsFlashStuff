package §6![§
{
   import §%q§.§+,§;
   import §%q§.Texture;
   import §+o§.§3C§;
   import §`!a§.§0L§;
   import §`!a§.§1"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!J§ extends § !f§
   {
       
      
      private var §'!t§:Texture;
      
      private var §;!q§:String;
      
      private var §`s§:Boolean;
      
      private var §;!7§:Boolean;
      
      private var §]"!§:§3C§;
      
      private var §?Y§:Boolean;
      
      public function §1!J§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§>!A§)
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
               if(!(_loc8_ && param3))
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
         if(!_loc8_)
         {
            if(_loc4_)
            {
               addr47:
               §§push(Number(_loc4_.height));
               if(!(_loc8_ && param2))
               {
                  addr70:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(param1.height);
               if(_loc9_ || this)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     §§goto(addr70);
                  }
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.premultipliedAlpha);
            if(_loc9_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               super(_loc5_,_loc6_,16777215,_loc7_);
            }
            while(true)
            {
               this.§'!t§ = param1;
               loop1:
               for(; _loc9_; while(!(_loc8_ && param3))
               {
                  §§goto(addr191);
               })
               {
                  if(!param3)
                  {
                     if(!_loc8_)
                     {
                        §§push(this);
                        if(!_loc8_)
                        {
                           if(§1"&§.§'!g§)
                           {
                              addr203:
                              §§push(§+,§.NONE);
                              if(_loc9_ || this)
                              {
                                 §§push(§§pop());
                                 if(_loc9_)
                                 {
                                    addr226:
                                    §§pop().§;!q§ = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          this.§`s§ = param2;
                                          loop4:
                                          while(_loc9_ || param3)
                                          {
                                             this.§;!7§ = this.§`s§;
                                             while(true)
                                             {
                                                this.§]"!§ = new §3C§(4,_loc7_);
                                                while(!_loc8_)
                                                {
                                                   this.§0!m§(true);
                                                   if(_loc9_)
                                                   {
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          while(!(_loc9_ || this))
                                          {
                                             continue loop1;
                                             this.§?Y§ = true;
                                          }
                                       }
                                    }
                                    addr227:
                                 }
                                 §§goto(addr226);
                              }
                              addr225:
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(§+,§.§7q§);
                              if(!(_loc8_ && param3))
                              {
                                 §§goto(addr225);
                              }
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr227);
                  }
                  else
                  {
                     §§push(this);
                     if(_loc9_ || param1)
                     {
                        if(§1"&§.§'!g§)
                        {
                           addr165:
                           §§push(§+,§.§7q§);
                           if(!(_loc8_ && param2))
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(§+,§.§]!h§);
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                           }
                        }
                        §§pop().§;!q§ = §§pop();
                        continue;
                     }
                     §§goto(addr165);
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function §1o§(param1:Context3D, param2:Bitmap) : §1!J§
      {
         return new §1!J§(Texture.§1o§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§?Y§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §1!&§.setTexCoords(0,0,0);
               loop1:
               while(!(_loc6_ && this))
               {
                  §1!&§.setTexCoords(1,1,0);
                  while(true)
                  {
                     §1!&§.setTexCoords(2,0,1);
                     loop3:
                     while(_loc5_ || this)
                     {
                        if(!_loc6_)
                        {
                           while(true)
                           {
                              §1!&§.setTexCoords(3,1,1);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §0!m§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §1!&§.copyTo(this.§]"!§,0,1,this.§`s§ || param1,null);
         }
         do
         {
            this.§'!t§.adjustVertexData(this.§]"!§,0,4);
         }
         while(_loc3_);
         
      }
      
      public function §>![§(param1:Vector.<Point>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §1!&§.setPosition(0,param1[0].x,param1[0].y);
            while(true)
            {
               §1!&§.setPosition(1,param1[1].x,param1[1].y);
               loop1:
               while(true)
               {
                  §1!&§.setPosition(2,param1[2].x,param1[2].y);
                  addr80:
                  while(true)
                  {
                     §1!&§.setPosition(3,param1[3].x,param1[3].y);
                     continue loop1;
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr67);
      }
      
      public function §9!n§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§>!A§;
         if(_loc5_)
         {
            if(_loc1_)
            {
               addr26:
               §§push(Number(_loc1_.width));
               if(!(_loc4_ && _loc1_))
               {
                  addr55:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr55);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  addr61:
                  §§push(Number(_loc1_.height));
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        addr85:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        §1!&§.setPosition(0,0,0);
                        while(true)
                        {
                           §1!&§.setPosition(1,_loc2_,0);
                           while(!_loc4_)
                           {
                              §1!&§.setPosition(2,0,_loc3_);
                              loop3:
                              while(_loc5_ || _loc2_)
                              {
                                 this.§0!m§();
                                 if(_loc5_)
                                 {
                                    addr99:
                                    if(_loc4_ && _loc1_)
                                    {
                                       while(true)
                                       {
                                          §1!&§.setPosition(3,_loc2_,_loc3_);
                                          continue loop3;
                                          §§goto(addr99);
                                       }
                                       addr127:
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr127);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr61);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §1!&§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§0!m§();
         }
         while(_loc3_);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(_loc3_ || param1)
         {
            §1!&§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3C§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§]"!§.copyTo(param1,param2,param3,this.§`s§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§'!t§;
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
               if(_loc5_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               addr47:
               this.§'!t§ = param1;
               _loc2_ = this.texture.§>!A§;
               if(!_loc6_)
               {
                  if(_loc2_)
                  {
                     if(!_loc6_)
                     {
                        §§push(Number(_loc2_.width));
                        loop0:
                        while(true)
                        {
                           addr173:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr174:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue loop0;
                              }
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 addr94:
                                 addr114:
                                 while(true)
                                 {
                                    this.updateVertexData(_loc3_,_loc4_,color,this.§'!t§.premultipliedAlpha);
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    §§push(Number(_loc2_.height));
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop4;
                                    }
                                    if(_loc6_)
                                    {
                                       break loop4;
                                    }
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr175);
                  }
                  else
                  {
                     §§push(this.texture);
                  }
                  §§goto(addr157);
               }
               §§goto(addr92);
            }
            else if(param1 != this.§'!t§)
            {
               if(!_loc5_)
               {
               }
               §§goto(addr47);
            }
            §§goto(addr176);
         }
         §§goto(addr47);
      }
      
      public function get smoothing() : String
      {
         return this.§;!q§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!§+,§.§%"$§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§;!q§ = param1;
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.setVertexColor(param1,param2);
            do
            {
               this.§0!m§();
            }
            while(_loc3_ && param2);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§0!m§();
            }
            while(_loc3_ && param2);
            
         }
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            param1.batchQuad(this,param2,this.§'!t§,this.§;!q§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§`s§;
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
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           this.§`s§ = this.§;!7§;
                        }
                        loop4:
                        while(_loc2_ || _loc3_)
                        {
                           while(true)
                           {
                              addr34:
                              while(true)
                              {
                                 super.color = param1;
                                 while(_loc2_)
                                 {
                                    this.§0!m§();
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(alpha == 1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr112);
                        }
                        addr112:
                        addr86:
                        addr111:
                     }
                     else
                     {
                        this.§`s§ = true;
                     }
                     while(true)
                     {
                        if(!(_loc2_ || param1))
                        {
                           §§goto(addr86);
                        }
                        §§goto(addr34);
                     }
                  }
                  addr78:
               }
               §§goto(addr111);
            }
         }
         §§goto(addr93);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.alpha = param1;
            loop0:
            while(true)
            {
               §§push((color & 16777215) == 16777215);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr98:
                        while(true)
                        {
                           §§push(alpha == 1);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                     }
                     addr97:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§`s§ = true;
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 this.§0!m§();
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 addr76:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr76);
                        }
                        continue loop0;
                     }
                     while(!(_loc3_ && _loc2_))
                     {
                        this.§`s§ = this.§;!7§;
                        §§goto(addr76);
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr97);
            }
         }
         §§goto(addr76);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§'!t§.clippedBitmapData;
      }
   }
}
