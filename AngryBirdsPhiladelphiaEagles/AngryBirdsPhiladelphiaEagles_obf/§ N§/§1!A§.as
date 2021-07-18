package § N§
{
   import §+§.§0&§;
   import §5Z§.§4]§;
   import §5Z§.§[Z§;
   import §8z§.Texture;
   import §8z§.§^,§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!A§ extends §6!O§
   {
       
      
      private var §-`§:Texture;
      
      private var §'!P§:String;
      
      private var §`?§:Boolean;
      
      private var §'!=§:Boolean;
      
      private var §%!F§:§0&§;
      
      private var §[[§:Boolean;
      
      public function §1!A§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§#6§)
         {
            addr41:
            §§push(Number(_loc4_.width));
            if(_loc8_ || this)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc9_)
            {
               if(_loc4_)
               {
                  addr46:
                  §§push(Number(_loc4_.height));
                  if(_loc8_)
                  {
                     addr69:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr61:
                     §§push(Number(§§pop()));
                     if(!(_loc9_ && param2))
                     {
                        §§goto(addr69);
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(!(_loc9_ && param3))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc9_ && param1))
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     this.§-`§ = param1;
                  }
                  if(param3)
                  {
                     §§push(this);
                     if(_loc8_ || param1)
                     {
                        if(§[Z§.§-D§)
                        {
                           addr177:
                           §§push(§^,§.§#b§);
                           if(!(_loc9_ && this))
                           {
                              §§push(§§pop());
                              if(_loc8_ || param3)
                              {
                                 addr205:
                                 §§pop().§'!P§ = §§pop();
                                 while(true)
                                 {
                                    this.§[[§ = true;
                                    while(_loc8_ || param1)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          this.§`?§ = param2;
                                          if(_loc9_ && this)
                                          {
                                             break;
                                          }
                                          if(!(_loc9_ && this))
                                          {
                                             this.§'!=§ = this.§`?§;
                                             this.§%!F§ = new §0&§(4,_loc7_);
                                             do
                                             {
                                                this.§,'§(true);
                                             }
                                             while(!_loc8_);
                                             
                                             if(_loc8_ || this)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          addr210:
                                          while(true)
                                          {
                                             §§push(this);
                                             if(_loc8_ || param3)
                                             {
                                                if(§[Z§.§-D§)
                                                {
                                                   addr231:
                                                   §§push(§^,§.NONE);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc8_)
                                                      {
                                                         addr244:
                                                         §§pop().§'!P§ = §§pop();
                                                         continue loop2;
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§^,§.§#b§);
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr244);
                                                   }
                                                }
                                                §§goto(addr244);
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr205);
                           }
                           addr204:
                           §§push(§§pop());
                        }
                        else
                        {
                           §§push(§^,§.§1K§);
                           if(!(_loc9_ && param1))
                           {
                              §§goto(addr204);
                           }
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr210);
               }
               else
               {
                  §§push(param1.height);
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr46);
         }
         else
         {
            §§push(param1.width);
            if(_loc8_)
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
      
      public static function §@!-§(param1:Context3D, param2:Bitmap) : §1!A§
      {
         return new §1!A§(Texture.§@!-§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[[§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super.updateVertexData(param1,param2,param3,param4);
         }
         loop0:
         while(true)
         {
            §"!F§.setTexCoords(0,0,0);
            loop1:
            while(true)
            {
               §"!F§.setTexCoords(1,1,0);
               while(true)
               {
                  §"!F§.setTexCoords(2,0,1);
                  while(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           §"!F§.setTexCoords(3,1,1);
                           if(_loc5_ || param2)
                           {
                              return;
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
      }
      
      private function §,'§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"!F§.copyTo(this.§%!F§,0,1,this.§`?§ || param1,null);
            do
            {
               this.§-`§.adjustVertexData(this.§%!F§,0,4);
            }
            while(_loc2_);
            
         }
      }
      
      public function §`!@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Rectangle = this.texture.§#6§;
         if(!(_loc4_ && _loc1_))
         {
            if(_loc1_)
            {
               addr31:
               §§push(Number(_loc1_.width));
               if(!(_loc4_ && _loc2_))
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr52:
                  §§push(Number(§§pop()));
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr60);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(!(_loc4_ && this))
               {
                  §§goto(addr52);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_ || this)
            {
               if(_loc1_)
               {
                  addr81:
                  §§push(Number(_loc1_.height));
                  if(_loc5_ || _loc3_)
                  {
                  }
               }
               else
               {
                  §§push(this.texture.height);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        addr100:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        §"!F§.setPosition(0,0,0);
                        loop0:
                        while(true)
                        {
                           §"!F§.setPosition(1,_loc2_,0);
                           while(true)
                           {
                              §"!F§.setPosition(2,0,_loc3_);
                              addr145:
                              while(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    §"!F§.setPosition(3,_loc2_,_loc3_);
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§,'§();
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(_loc5_ || _loc1_)
                        {
                           break;
                        }
                        §§goto(addr145);
                     }
                     return;
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr81);
         }
         §§goto(addr31);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §"!F§.setTexCoords(param1,param2.x,param2.y);
         }
         do
         {
            this.§,'§();
         }
         while(_loc4_ && this);
         
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point();
         if(!(_loc3_ && _loc2_))
         {
            §"!F§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§0&§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§%!F§.copyTo(param1,param2,param3,this.§`?§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§-`§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 == null)
            {
               throw new ArgumentError("Texture cannot be null");
            }
         }
         if(param1 != this.§-`§)
         {
            do
            {
               this.§-`§ = param1;
               do
               {
                  §"!F§.setPremultipliedAlpha(this.§-`§.premultipliedAlpha);
                  do
                  {
                     this.§,'§();
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'!P§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!§^,§.§1!6§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§'!P§ = param1;
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
               this.§,'§();
            }
            while(_loc4_ && param2);
            
         }
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.setVertexAlpha(param1,param2);
            do
            {
               this.§,'§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            param1.batchQuad(this,param2,this.§-`§,this.§'!P§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§`?§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§`?§ = true;
               loop0:
               while(true)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        this.§`?§ = this.§'!=§;
                        addr91:
                        while(true)
                        {
                        }
                     }
                     addr87:
                  }
                  while(true)
                  {
                     super.color = param1;
                     continue loop0;
                     §§goto(addr91);
                  }
               }
            }
            §§goto(addr87);
         }
         §§goto(addr91);
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§-`§.clippedBitmapData;
      }
   }
}
