package §'!9§
{
   import §<&§.§^b§;
   import §<&§.§`K§;
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §`s§.§0p§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!U§ extends §%!g§
   {
       
      
      private var §[!5§:Texture;
      
      private var §#! §:String;
      
      private var §5_§:Boolean;
      
      private var §3i§:Boolean;
      
      private var §<o§:§0p§;
      
      private var §^!%§:Boolean;
      
      public function §?!U§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.frame)
         {
            §§push(Number(_loc4_.width));
            if(!_loc9_)
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
         }
         else
         {
            §§push(param1.width);
            if(_loc8_ || param2)
            {
               §§goto(addr37);
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc9_)
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
               if(_loc8_ || this)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_ || param2)
                  {
                     addr69:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(!_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     while(true)
                     {
                        this.§[!5§ = param1;
                        while(true)
                        {
                           if(param3)
                           {
                              §§push(this);
                              if(_loc8_ || param3)
                              {
                                 if(§^b§.§7h§)
                                 {
                                    addr173:
                                    §§push(§]-§.§![§);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param1)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr190:
                                       §§push(§§pop());
                                    }
                                 }
                                 else
                                 {
                                    §§push(§]-§.§<! §);
                                    if(_loc8_)
                                    {
                                       §§goto(addr190);
                                    }
                                 }
                                 §§pop().§#! § = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       this.§^!%§ = true;
                                       while(true)
                                       {
                                       }
                                       addr158:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          if(!_loc9_)
                                          {
                                             if(§^b§.§7h§)
                                             {
                                                addr204:
                                                §§push(§]-§.NONE);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_ || param1)
                                                   {
                                                      addr242:
                                                      §§pop().§#! § = §§pop();
                                                      while(true)
                                                      {
                                                         addr142:
                                                         while(true)
                                                         {
                                                            this.§5_§ = param2;
                                                            continue loop2;
                                                         }
                                                      }
                                                      addr243:
                                                   }
                                                   §§goto(addr242);
                                                }
                                                addr241:
                                                §§push(§§pop());
                                             }
                                             else
                                             {
                                                §§push(§]-§.§![§);
                                                if(_loc8_ || param2)
                                                {
                                                   §§goto(addr241);
                                                }
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr204);
                                       }
                                       addr198:
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr198);
                        }
                     }
                  }
                  §§goto(addr153);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr46);
      }
      
      public static function §@#§(param1:Context3D, param2:Bitmap) : §?!U§
      {
         return new §?!U§(Texture.§@#§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^!%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super.updateVertexData(param1,param2,param3,param4);
            while(true)
            {
               § Q§.setTexCoords(0,0,0);
               §§goto(addr93);
            }
         }
         addr93:
         while(true)
         {
            § Q§.setTexCoords(1,1,0);
            do
            {
               § Q§.setTexCoords(2,0,1);
               do
               {
                  § Q§.setTexCoords(3,1,1);
               }
               while(_loc6_);
               
            }
            while(_loc6_ && param3);
            
            if(!_loc6_)
            {
               if(_loc5_ || param3)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §^t§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            § Q§.copyTo(this.§<o§,0,1,this.§5_§ || param1,null);
            do
            {
               this.§[!5§.adjustVertexData(this.§<o§,0,4);
            }
            while(_loc3_);
            
         }
      }
      
      public function §`!h§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.frame;
         if(!_loc5_)
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
                  addr36:
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr44);
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  if(_loc1_)
                  {
                     addr50:
                     §§push(Number(_loc1_.height));
                     if(!_loc4_)
                     {
                     }
                     addr74:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(this.texture.height);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           §§goto(addr74);
                        }
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     § Q§.setPosition(0,0,0);
                     while(true)
                     {
                        § Q§.setPosition(1,_loc2_,0);
                        addr135:
                        while(true)
                        {
                           § Q§.setPosition(2,0,_loc3_);
                        }
                     }
                     addr141:
                  }
                  loop2:
                  while(true)
                  {
                     § Q§.setPosition(3,_loc2_,_loc3_);
                     while(_loc4_ || _loc3_)
                     {
                        this.§^t§();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr135);
                     }
                  }
                  return;
               }
               §§goto(addr50);
            }
            else
            {
               §§push(this.texture.width);
               if(_loc4_)
               {
                  §§goto(addr36);
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
         if(_loc4_ || this)
         {
            § Q§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§^t§();
         }
         while(!_loc4_);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_)
         {
            § Q§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§0p§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§<o§.copyTo(param1,param2,param3,this.§5_§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§[!5§)
               {
                  if(_loc2_)
                  {
                     this.§[!5§ = param1;
                  }
                  loop1:
                  while(true)
                  {
                     § Q§.setPremultipliedAlpha(this.§[!5§.premultipliedAlpha);
                     loop2:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           throw new ArgumentError("Texture cannot be null");
                        }
                        addr91:
                        while(true)
                        {
                           this.§^t§();
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr76);
      }
      
      public function get smoothing() : String
      {
         return this.§#! §;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§]-§.§!q§(param1))
            {
               if(!(_loc2_ && this))
               {
                  addr73:
                  this.§#! § = param1;
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr73);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§^t§();
         }
         while(_loc4_);
         
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§^t§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.batchQuad(this,param2,this.§[!5§,this.§#! §);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§5_§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if((param1 & 16777215) == 16777215)
            {
               if(!(_loc2_ && this))
               {
                  this.§5_§ = this.§3i§;
                  addr87:
                  loop3:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        super.color = param1;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                        continue loop3;
                     }
                  }
                  addr87:
               }
               §§goto(addr87);
            }
            else
            {
               this.§5_§ = true;
            }
            while(true)
            {
               §§goto(addr45);
            }
         }
         §§goto(addr87);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[!5§.clippedBitmapData;
      }
   }
}
