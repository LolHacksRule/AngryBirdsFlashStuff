package §+!-§
{
   import §%!j§.§%K§;
   import §%!j§.§&Y§;
   import §0!%§.§%§;
   import §0!%§.Texture;
   import §`!=§.§?!X§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7"#§ extends §4!O§
   {
       
      
      private var §=#§:Texture;
      
      private var §8!A§:String;
      
      private var §>!l§:Boolean;
      
      private var §^2§:Boolean;
      
      private var §+!@§:§?!X§;
      
      private var §`!g§:Boolean;
      
      public function §7"#§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(!(_loc9_ && param2))
            {
               addr40:
               §§push(Number(§§pop()));
            }
            else
            {
               addr37:
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  §§goto(addr40);
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc9_ && this))
            {
               if(_loc4_)
               {
                  addr51:
                  §§push(Number(_loc4_.height));
                  if(_loc8_)
                  {
                     addr64:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr61:
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        §§goto(addr64);
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(_loc8_ || param2)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     do
                     {
                        this.§=#§ = param1;
                        loop1:
                        do
                        {
                           if(param3)
                           {
                              §§push(this);
                              if(!_loc9_)
                              {
                                 if(§%K§.§%!R§)
                                 {
                                    addr165:
                                    §§push(§%§.§<!U§);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc8_ || param1))
                                       {
                                          addr188:
                                          §§pop().§8!A§ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             this.§`!g§ = true;
                                             addr155:
                                             loop9:
                                             while(true)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   this.§>!l§ = param2;
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         this.§^2§ = this.§>!l§;
                                                         loop7:
                                                         do
                                                         {
                                                            this.§+!@§ = new §?!X§(4,_loc7_);
                                                            for(; _loc8_; this.§-!N§(true),if(_loc8_ || param1)
                                                            {
                                                               continue loop7;
                                                            })
                                                            {
                                                               addr130:
                                                               if(_loc8_ || this)
                                                               {
                                                                  continue;
                                                               }
                                                               addr193:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     if(§%K§.§%!R§)
                                                                     {
                                                                        addr204:
                                                                        §§push(§%§.NONE);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc9_ && param3)
                                                                           {
                                                                              addr226:
                                                                              §§push(§§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§%§.§<!U§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§goto(addr226);
                                                                        }
                                                                     }
                                                                     §§pop().§8!A§ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop1;
                                                                     addr228:
                                                                  }
                                                                  §§goto(addr204);
                                                                  §§goto(addr130);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(!(_loc8_ || param1));
                                                         
                                                         if(_loc8_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop9;
                                                }
                                                if(!_loc9_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                       }
                                       §§goto(addr188);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§%§.§]h§);
                                    if(_loc8_)
                                    {
                                       §§goto(addr188);
                                    }
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr193);
                        }
                        while(_loc9_);
                        
                     }
                     while(_loc9_);
                     
                     return;
                  }
                  §§goto(addr155);
               }
               else
               {
                  §§push(param1.height);
                  if(!_loc9_)
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr51);
         }
         else
         {
            §§push(param1.width);
            if(!_loc9_)
            {
               §§goto(addr37);
            }
         }
         §§goto(addr40);
      }
      
      public static function §+o§(param1:Context3D, param2:Bitmap) : §7"#§
      {
         return new §7"#§(Texture.§+o§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`!g§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super.updateVertexData(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §2!b§.setTexCoords(0,0,0);
               loop1:
               while(true)
               {
                  §2!b§.setTexCoords(1,1,0);
                  while(true)
                  {
                     §2!b§.setTexCoords(2,0,1);
                     loop3:
                     while(_loc5_ || param1)
                     {
                        continue loop0;
                        while(true)
                        {
                           §2!b§.setTexCoords(3,1,1);
                           if(_loc5_)
                           {
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
         §§goto(addr74);
      }
      
      private function §-!N§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §2!b§.copyTo(this.§+!@§,0,1,this.§>!l§ || param1,null);
         }
         do
         {
            this.§=#§.adjustVertexData(this.§+!@§,0,4);
         }
         while(_loc3_ && param1);
         
      }
      
      public function §%B§() : void
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
               if(!(_loc4_ && _loc2_))
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr50);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               if(_loc1_)
               {
                  addr61:
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
                     if(_loc5_)
                     {
                        addr90:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        §2!b§.setPosition(0,0,0);
                        loop0:
                        while(true)
                        {
                           §2!b§.setPosition(1,_loc2_,0);
                           do
                           {
                              §2!b§.setPosition(2,0,_loc3_);
                              do
                              {
                                 §2!b§.setPosition(3,_loc2_,_loc3_);
                                 continue loop0;
                              }
                              while(!_loc5_);
                              
                           }
                           while(!(_loc5_ || _loc1_));
                           
                        }
                     }
                     return;
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr61);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §2!b§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§-!N§();
         }
         while(_loc4_ && this);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_ || this)
         {
            §2!b§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!X§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§+!@§.copyTo(param1,param2,param3,this.§>!l§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
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
               if(_loc6_ || _loc2_)
               {
                  throw new ArgumentError("Texture cannot be null");
               }
               addr53:
               this.§=#§ = param1;
               _loc2_ = this.texture.frame;
               if(_loc6_)
               {
                  if(!_loc2_)
                  {
                     §§push(this.texture);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().width);
                        if(!_loc5_)
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
                                 if(!_loc2_)
                                 {
                                    §§push(this.texture);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().height);
                                    if(_loc6_)
                                    {
                                       loop4:
                                       while(!_loc5_)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr142:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr142:
                                          }
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   this.updateVertexData(_loc3_,_loc4_,color,this.§=#§.premultipliedAlpha);
                                                   while(true)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr147:
                                                   while(true)
                                                   {
                                                      §§push(Number(_loc2_.width));
                                                      if(_loc5_)
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr142);
                                          }
                                          while(true)
                                          {
                                             §§push(Number(_loc2_.height));
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr107);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               §§goto(addr147);
            }
            else
            {
               addr47:
               if(param1 != this.§=#§)
               {
                  if(_loc5_)
                  {
                  }
                  §§goto(addr53);
               }
            }
            addr172:
            return;
         }
         §§goto(addr47);
      }
      
      public function get smoothing() : String
      {
         return this.§8!A§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§%§.§,!#§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(_loc2_ || this)
            {
               this.§8!A§ = param1;
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
               this.§-!N§();
            }
            while(_loc4_);
            
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
            this.§-!N§();
         }
         while(_loc3_);
         
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            param1.batchQuad(this,param2,this.§=#§,this.§8!A§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§>!l§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§>!l§ = true;
               loop0:
               while(true)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     continue;
                  }
                  addr96:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§>!l§ = this.§^2§;
            §§goto(addr96);
         }
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§=#§.clippedBitmapData;
      }
   }
}
