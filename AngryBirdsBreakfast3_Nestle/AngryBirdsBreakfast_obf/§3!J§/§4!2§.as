package §3!J§
{
   import §!!!§.§6!l§;
   import §!!!§.§<@§;
   import §=!4§.Texture;
   import §=!4§.§`'§;
   import §^!^§.§#!_§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!2§ extends §8!l§
   {
       
      
      private var §>"5§:Texture;
      
      private var §`<§:String;
      
      private var §;J§:Boolean;
      
      private var §do§:Boolean;
      
      private var §<!E§:§#!_§;
      
      private var §'_§:Boolean;
      
      public function §4!2§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§&F§)
         {
            addr41:
            §§push(Number(_loc4_.width));
            if(!_loc9_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc8_)
            {
               if(_loc4_)
               {
                  addr46:
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
                     if(!(_loc9_ && param1))
                     {
                        addr64:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(param1.premultipliedAlpha);
                     if(!(_loc9_ && param3))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(!(_loc9_ && param2))
                     {
                        super(_loc5_,_loc6_,16777215,_loc7_);
                        while(true)
                        {
                           this.§>"5§ = param1;
                           while(true)
                           {
                              if(!param3)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc8_ || this)
                                    {
                                       if(§6!l§.§`k§)
                                       {
                                          addr224:
                                          §§push(§`'§.NONE);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop());
                                             if(_loc9_ && param3)
                                             {
                                                addr241:
                                                §§push(§§pop());
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§`'§.§1!T§);
                                          if(_loc8_)
                                          {
                                             §§goto(addr241);
                                          }
                                       }
                                       §§pop().§`<§ = §§pop();
                                       while(true)
                                       {
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                              }
                              else
                              {
                                 §§push(this);
                                 if(!(_loc9_ && param3))
                                 {
                                    if(§6!l§.§`k§)
                                    {
                                       addr180:
                                       §§push(§`'§.§1!T§);
                                       if(!(_loc9_ && param3))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc8_ || param2))
                                          {
                                             addr208:
                                             §§pop().§`<§ = §§pop();
                                             §§goto(addr209);
                                          }
                                          §§goto(addr208);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§`'§.§&5§);
                                       if(!(_loc9_ && param3))
                                       {
                                          §§goto(addr208);
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr180);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        addr149:
                        while(true)
                        {
                           this.§;J§ = param2;
                           while(true)
                           {
                              this.§do§ = this.§;J§;
                              loop8:
                              while(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc9_ && param2)
                                    {
                                       continue loop8;
                                    }
                                    addr112:
                                    if(!(_loc9_ && param3))
                                    {
                                       continue;
                                    }
                                    addr209:
                                    while(true)
                                    {
                                       this.§'_§ = true;
                                       break loop9;
                                       §§goto(addr112);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr46);
         }
         else
         {
            §§push(param1.width);
            if(!(_loc9_ && param2))
            {
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  §§goto(addr40);
               }
               §§goto(addr41);
            }
         }
         §§goto(addr40);
      }
      
      public static function §83§(param1:Context3D, param2:Bitmap) : §4!2§
      {
         return new §4!2§(Texture.§83§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§'_§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               §2!^§.setTexCoords(0,0,0);
            }
            addr96:
         }
         loop1:
         while(true)
         {
            §2!^§.setTexCoords(1,1,0);
            while(true)
            {
               §2!^§.setTexCoords(2,0,1);
               while(_loc6_)
               {
                  §2!^§.setTexCoords(3,1,1);
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue loop1;
                  }
                  if(_loc6_)
                  {
                     break loop1;
                  }
                  §§goto(addr96);
               }
            }
         }
      }
      
      private function §'!x§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §2!^§.copyTo(this.§<!E§,0,1,this.§;J§ || param1,null);
         }
         do
         {
            this.§>"5§.adjustVertexData(this.§<!E§,0,4);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §0"&§(param1:Vector.<Point>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §2!^§.setPosition(0,param1[0].x,param1[0].y);
         }
         loop0:
         while(true)
         {
            §2!^§.setPosition(1,param1[1].x,param1[1].y);
            while(true)
            {
               §2!^§.setPosition(2,param1[2].x,param1[2].y);
               addr71:
               while(!_loc3_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      public function §2h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§&F§;
         if(_loc5_ || _loc1_)
         {
            if(_loc1_)
            {
               addr31:
               §§push(Number(_loc1_.width));
               if(_loc5_ || _loc3_)
               {
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_ || _loc1_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && this))
                  {
                     addr60:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     if(_loc1_)
                     {
                        addr66:
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
                           if(_loc5_ || _loc3_)
                           {
                              addr95:
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc4_)
                           {
                              §2!^§.setPosition(0,0,0);
                           }
                           while(true)
                           {
                              §2!^§.setPosition(1,_loc2_,0);
                              while(!_loc4_)
                              {
                                 §2!^§.setPosition(2,0,_loc3_);
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    §2!^§.setPosition(3,_loc2_,_loc3_);
                                    while(!_loc4_)
                                    {
                                       this.§'!x§();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §2!^§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§'!x§();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(!_loc4_)
         {
            §2!^§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§#!_§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§<!E§.copyTo(param1,param2,param3,this.§;J§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§>"5§;
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
               if(!_loc5_)
               {
                  §§goto(addr31);
               }
               else
               {
                  addr46:
                  _loc2_ = this.texture.§&F§;
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc2_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(Number(_loc2_.width));
                           loop0:
                           while(true)
                           {
                              addr184:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr185:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                              loop11:
                              while(true)
                              {
                                 if(_loc5_ && this)
                                 {
                                    continue loop0;
                                 }
                                 _loc4_ = §§pop();
                                 loop4:
                                 while(!_loc5_)
                                 {
                                    do
                                    {
                                       this.updateVertexData(_loc3_,_loc4_,color,this.§>"5§.premultipliedAlpha);
                                       while(_loc6_ || this)
                                       {
                                          this.§'!x§();
                                          if(!(_loc6_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr69);
                                       }
                                       continue loop4;
                                    }
                                    while(false);
                                    
                                    return;
                                 }
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(Number(_loc2_.height));
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr145:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr184);
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      addr183:
                                                   }
                                                }
                                                addr143:
                                             }
                                             §§goto(addr145);
                                          }
                                          addr108:
                                       }
                                       else
                                       {
                                          §§goto(addr154);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.texture);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§§pop().height);
                                          if(!_loc5_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc5_)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr182:
                                       }
                                    }
                                    §§goto(addr183);
                                 }
                                 addr154:
                              }
                           }
                        }
                        §§goto(addr186);
                     }
                     else
                     {
                        §§push(this.texture);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr108);
               }
            }
            else if(param1 != this.§>"5§)
            {
               if(!_loc5_)
               {
                  this.§>"5§ = param1;
               }
               §§goto(addr46);
            }
            §§goto(addr187);
         }
         addr31:
         throw new ArgumentError("Texture cannot be null");
      }
      
      public function get smoothing() : String
      {
         return this.§`<§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§`'§.§`y§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§`<§ = param1;
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
            this.§'!x§();
         }
         while(_loc3_ && param2);
         
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
            this.§'!x§();
         }
         while(_loc3_ && param1);
         
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            param1.batchQuad(this,param2,this.§>"5§,this.§`<§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§;J§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push((param1 & 16777215) == 16777215);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr123:
                     loop7:
                     while(true)
                     {
                        §§push(alpha == 1);
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§;J§ = true;
                              loop1:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§;J§ = this.§do§;
                                       addr102:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr98:
                                 }
                                 while(true)
                                 {
                                    super.color = param1;
                                    continue loop1;
                                    §§goto(addr102);
                                 }
                                 addr46:
                                 if(!(_loc2_ && this))
                                 {
                                    return;
                                 }
                                 continue loop7;
                              }
                           }
                           §§goto(addr98);
                           continue loop7;
                        }
                     }
                  }
                  addr122:
               }
               §§goto(addr96);
            }
            §§goto(addr122);
         }
         §§goto(addr123);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.alpha = param1;
            loop0:
            while(true)
            {
               §§push((color & 16777215) == 16777215);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr113:
                        while(true)
                        {
                           §§push(alpha == 1);
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop7;
                        }
                     }
                     addr112:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§;J§ = true;
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§;J§ = this.§do§;
                        continue loop0;
                     }
                  }
               }
               §§goto(addr112);
            }
         }
         §§goto(addr45);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>"5§.clippedBitmapData;
      }
   }
}
