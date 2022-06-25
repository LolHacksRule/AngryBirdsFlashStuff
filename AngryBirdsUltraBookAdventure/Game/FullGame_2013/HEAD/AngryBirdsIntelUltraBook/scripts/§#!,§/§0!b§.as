package §#!,§
{
   import §'7§.VertexData;
   import §6!J§.§&!A§;
   import §6!J§.Texture;
   import §7!>§.RenderSupport;
   import §7!>§.Starling;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!b§ extends §6!Y§
   {
       
      
      private var §>!S§:Texture;
      
      private var §'!&§:String;
      
      private var §2!0§:Boolean;
      
      private var §0X§:Boolean;
      
      private var §[! §:VertexData;
      
      private var §7y§:Boolean;
      
      public function §0!b§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle = param1.frame;
         if(_loc9_)
         {
            if(_loc4_)
            {
               addr40:
               §§push(Number(_loc4_.width));
               if(_loc9_)
               {
                  addr39:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc8_ && param3))
               {
                  if(_loc4_)
                  {
                     addr51:
                     §§push(Number(_loc4_.height));
                     if(!_loc9_)
                     {
                     }
                     addr69:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     §§push(param1.height);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc9_ || this)
                        {
                           §§goto(addr69);
                        }
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(!_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_)
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     loop0:
                     while(true)
                     {
                        this.§>!S§ = param1;
                        loop1:
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc8_ && this))
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              continue;
                           }
                           §§push(this);
                           if(!(_loc8_ && param2))
                           {
                              if(Starling.isSoftware)
                              {
                                 addr173:
                                 §§push(§&!A§.§^Z§);
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc8_ && param2))
                                    {
                                       addr198:
                                       §§pop().§'!&§ = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          if(!(_loc8_ && param3))
                                          {
                                             this.§7y§ = true;
                                             while(true)
                                             {
                                                addr98:
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      return;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr268:
                                             while(true)
                                             {
                                             }
                                             addr268:
                                          }
                                          while(true)
                                          {
                                             this.§2!0§ = param2;
                                             addr143:
                                             while(_loc9_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 addr197:
                                 §§push(§§pop());
                              }
                              else
                              {
                                 §§push(§&!A§.§?k§);
                                 if(_loc9_)
                                 {
                                    §§goto(addr197);
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr173);
                        }
                     }
                  }
                  §§goto(addr268);
               }
               §§goto(addr51);
            }
            else
            {
               §§push(param1.width);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr40);
               }
            }
            §§goto(addr39);
         }
         §§goto(addr40);
      }
      
      public static function §'o§(param1:Context3D, param2:Bitmap) : §0!b§
      {
         return new §0!b§(Texture.§'o§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7y§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.updateVertexData(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §7!$§.setTexCoords(0,0,0);
               loop1:
               while(true)
               {
                  §7!$§.setTexCoords(1,1,0);
                  while(true)
                  {
                     §7!$§.setTexCoords(2,0,1);
                     loop3:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           §7!$§.setTexCoords(3,1,1);
                           if(_loc6_ || param3)
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
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
         §§goto(addr79);
      }
      
      private function §^1§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §7!$§.copyTo(this.§[! §,0,1,this.§2!0§ || param1,null);
         }
         do
         {
            this.§>!S§.adjustVertexData(this.§[! §,0,4);
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §3_§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.frame;
         if(_loc4_)
         {
            if(_loc1_)
            {
               addr26:
               §§push(Number(_loc1_.width));
               if(!_loc5_)
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr37:
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr45);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!_loc5_)
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc1_)
            {
               if(_loc1_)
               {
                  addr57:
                  §§push(Number(_loc1_.height));
                  if(_loc4_ || _loc1_)
                  {
                  }
                  addr91:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(this.texture.height);
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        §§goto(addr91);
                     }
                  }
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && _loc1_))
               {
                  §7!$§.setPosition(0,0,0);
                  loop0:
                  while(true)
                  {
                     §7!$§.setPosition(1,_loc2_,0);
                     while(true)
                     {
                        §7!$§.setPosition(2,0,_loc3_);
                        addr131:
                        while(!(_loc5_ && _loc1_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr57);
         }
         §§goto(addr26);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §7!$§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§^1§();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(_loc4_)
         {
            §7!$§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[! §.copyTo(param1,param2,param3,this.§2!0§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§>!S§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§>!S§)
               {
                  loop1:
                  while(true)
                  {
                     this.§>!S§ = param1;
                     while(true)
                     {
                        §7!$§.setPremultipliedAlpha(this.§>!S§.premultipliedAlpha);
                        while(_loc2_ || this)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 this.§^1§();
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    addr104:
                                    throw new ArgumentError("Texture cannot be null");
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr104);
      }
      
      public function get smoothing() : String
      {
         return this.§'!&§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§&!A§.§-!Z§(param1))
            {
               if(_loc3_ || param1)
               {
                  addr69:
                  this.§'!&§ = param1;
               }
               return;
            }
            throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
         }
         §§goto(addr69);
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
            this.§^1§();
         }
         while(!(_loc4_ || param2));
         
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
               this.§^1§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            param1.batchQuad(this,param2,this.§>!S§,this.§'!&§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§2!0§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§2!0§ = true;
               loop0:
               do
               {
                  if(!(_loc3_ && this))
                  {
                     loop1:
                     while(true)
                     {
                        super.color = param1;
                        while(_loc2_ || param1)
                        {
                           this.§^1§();
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        addr92:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr92);
               }
               while(_loc3_ && _loc2_);
               
               return;
            }
            while(true)
            {
               this.§2!0§ = this.§0X§;
            }
         }
         §§goto(addr92);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>!S§.clippedBitmapData;
      }
   }
}
