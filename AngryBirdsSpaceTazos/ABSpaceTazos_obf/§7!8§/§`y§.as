package §7!8§
{
   import §&!Z§.§6!r§;
   import §5Q§.§%!t§;
   import §5Q§.§^!e§;
   import §`!#§.§-!k§;
   import §`!#§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`y§ extends §&!D§
   {
       
      
      private var §2-§:Texture;
      
      private var §!U§:String;
      
      private var §4!z§:Boolean;
      
      private var §5!c§:Boolean;
      
      private var §""7§:§6!r§;
      
      private var §>v§:Boolean;
      
      public function §`y§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§`6§)
         {
            §§push(Number(_loc4_.width));
            if(!_loc8_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            else
            {
               addr33:
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  §§goto(addr36);
               }
            }
            var _loc5_:* = §§pop();
            if(_loc9_ || param2)
            {
               if(_loc4_)
               {
                  addr47:
                  §§push(Number(_loc4_.height));
                  if(_loc9_)
                  {
                     addr65:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(param1.height);
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        §§goto(addr65);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param1.premultipliedAlpha);
               if(!(_loc8_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc9_)
               {
                  super(_loc5_,_loc6_,16777215,_loc7_);
                  while(true)
                  {
                     this.§2-§ = param1;
                     loop1:
                     while(true)
                     {
                        if(!param3)
                        {
                           if(_loc9_)
                           {
                              §§push(this);
                              if(!(_loc8_ && param2))
                              {
                                 if(§^!e§.§use§)
                                 {
                                    addr205:
                                    §§push(§-!k§.NONE);
                                    if(_loc9_ || param3)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ && this)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr227:
                                       §§push(§§pop());
                                    }
                                 }
                                 else
                                 {
                                    §§push(§-!k§.§?F§);
                                    if(_loc9_)
                                    {
                                       §§goto(addr227);
                                    }
                                 }
                                 §§pop().§!U§ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       this.§4!z§ = param2;
                                       loop4:
                                       while(!_loc8_)
                                       {
                                          this.§5!c§ = this.§4!z§;
                                          loop5:
                                          while(_loc9_)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                this.§""7§ = new §6!r§(4,_loc7_);
                                                while(!(_loc8_ && param1))
                                                {
                                                   continue loop1;
                                                   this.§[!M§(true);
                                                   if(_loc9_ || param2)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             return;
                                          }
                                          continue loop2;
                                       }
                                       addr145:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr229:
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr229);
                        }
                        else
                        {
                           §§push(this);
                           if(!_loc8_)
                           {
                              if(§^!e§.§use§)
                              {
                                 addr155:
                                 §§push(§-!k§.§?F§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_ && param1)
                                    {
                                       addr173:
                                       §§pop().§!U§ = §§pop();
                                       §§goto(addr174);
                                    }
                                    §§goto(addr173);
                                 }
                              }
                              else
                              {
                                 §§push(§-!k§.§+!%§);
                                 if(_loc9_)
                                 {
                                    §§goto(addr173);
                                 }
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr155);
                        }
                     }
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                     this.§>v§ = true;
                     §§goto(addr145);
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr47);
         }
         else
         {
            §§push(param1.width);
            if(!_loc8_)
            {
               §§goto(addr33);
            }
         }
         §§goto(addr36);
      }
      
      public static function §3<§(param1:Context3D, param2:Bitmap) : §`y§
      {
         return new §`y§(Texture.§3<§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§>v§;
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
               §'!O§.setTexCoords(0,0,0);
            }
            addr105:
         }
         loop1:
         while(true)
         {
            §'!O§.setTexCoords(1,1,0);
            while(_loc5_ || this)
            {
               §'!O§.setTexCoords(2,0,1);
               while(_loc5_ || this)
               {
                  §'!O§.setTexCoords(3,1,1);
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  §§goto(addr105);
               }
            }
         }
      }
      
      private function §[!M§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §'!O§.copyTo(this.§""7§,0,1,this.§4!z§ || param1,null);
         }
         do
         {
            this.§2-§.adjustVertexData(this.§""7§,0,4);
         }
         while(_loc3_);
         
      }
      
      public function §7+§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§`6§;
         if(!_loc4_)
         {
            if(_loc1_)
            {
               addr26:
               §§push(Number(_loc1_.width));
               if(_loc5_ || _loc3_)
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr42:
                  §§push(Number(§§pop()));
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr50);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc5_)
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc1_)
               {
                  addr56:
                  §§push(Number(_loc1_.height));
                  if(!_loc4_)
                  {
                     addr85:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr77:
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr85);
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     §'!O§.setPosition(0,0,0);
                     loop0:
                     while(true)
                     {
                        §'!O§.setPosition(1,_loc2_,0);
                        while(true)
                        {
                           §'!O§.setPosition(2,0,_loc3_);
                           loop2:
                           while(_loc5_ || _loc2_)
                           {
                              while(true)
                              {
                                 §'!O§.setPosition(3,_loc2_,_loc3_);
                                 while(!_loc4_)
                                 {
                                    continue loop0;
                                    this.§[!M§();
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr129);
               }
               else
               {
                  §§push(this.texture.height);
                  if(!_loc4_)
                  {
                     §§goto(addr77);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr56);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §'!O§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§[!M§();
         }
         while(_loc3_);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_ || _loc3_)
         {
            §'!O§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§6!r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§""7§.copyTo(param1,param2,param3,this.§4!z§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§2-§;
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
               _loc2_ = this.texture.§`6§;
               if(!_loc6_)
               {
                  if(_loc2_)
                  {
                     if(_loc5_ || this)
                     {
                        §§push(Number(_loc2_.width));
                        while(true)
                        {
                           addr183:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr184:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                           }
                           addr143:
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(Number(§§pop()));
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr118:
                              }
                              addr153:
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr155:
                              while(true)
                              {
                                 addr67:
                                 §§goto(addr186);
                              }
                              §§goto(addr153);
                           }
                        }
                     }
                     §§goto(addr185);
                  }
                  else
                  {
                     §§push(this.texture);
                  }
                  §§goto(addr181);
               }
               §§goto(addr155);
            }
            else if(param1 != this.§2-§)
            {
               if(!_loc6_)
               {
                  this.§2-§ = param1;
               }
               §§goto(addr50);
            }
            addr186:
            while(true)
            {
               this.updateVertexData(_loc3_,_loc4_,color,this.§2-§.premultipliedAlpha);
               continue loop10;
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function get smoothing() : String
      {
         return this.§!U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§-!k§.§2!G§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            if(_loc2_ || _loc2_)
            {
               this.§!U§ = param1;
            }
         }
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.setVertexColor(param1,param2);
         }
         do
         {
            this.§[!M§();
         }
         while(_loc4_);
         
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
            this.§[!M§();
         }
         while(!(_loc3_ || param2));
         
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            param1.batchQuad(this,param2,this.§2-§,this.§!U§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4!z§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push((param1 & 16777215) == 16777215);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(alpha == 1);
                        if(_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§4!z§ = true;
                              loop1:
                              do
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       continue loop6;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       super.color = param1;
                                       while(!(_loc2_ && param1))
                                       {
                                          this.§[!M§();
                                          if(_loc3_ || _loc3_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr87:
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§4!z§ = this.§5!c§;
                                    }
                                    addr83:
                                 }
                                 §§goto(addr87);
                              }
                              while(_loc2_);
                              
                              return;
                           }
                           §§goto(addr83);
                           continue loop6;
                        }
                     }
                  }
                  addr107:
               }
               §§goto(addr81);
            }
            §§goto(addr107);
         }
         §§goto(addr87);
      }
      
      override public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr99:
                        do
                        {
                           §§push(alpha == 1);
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc2_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§4!z§ = true;
                        loop5:
                        while(true)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr71:
                              while(!_loc2_)
                              {
                                 this.§4!z§ = this.§5!c§;
                              }
                              §§goto(addr99);
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop5;
                              }
                              continue loop0;
                           }
                        }
                        return;
                        addr34:
                     }
                     §§goto(addr71);
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§2-§.clippedBitmapData;
      }
   }
}
