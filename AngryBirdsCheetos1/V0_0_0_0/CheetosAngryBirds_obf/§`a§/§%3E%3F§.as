package §`a§
{
   import § !+§.§%L§;
   import § !+§.§0Z§;
   import §2!-§.Texture;
   import §2!-§.§]!=§;
   import §<!M§.§;Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>?§ extends §?!N§
   {
       
      
      private var §[!H§:Texture;
      
      private var §?[§:String;
      
      private var §3L§:Boolean;
      
      private var §1>§:Boolean;
      
      private var §2K§:§;Z§;
      
      private var §0!Q§:Boolean;
      
      public function §>?§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Rectangle;
         if(_loc4_ = param1.§&V§)
         {
            §§push(Number(_loc4_.width));
            if(_loc8_ && this)
            {
            }
         }
         else
         {
            §§push(param1.width);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  addr41:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc9_)
               {
                  if(_loc4_)
                  {
                     addr47:
                     §§push(Number(_loc4_.height));
                     if(!(_loc8_ && param3))
                     {
                        addr70:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr67:
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           §§goto(addr70);
                        }
                     }
                  }
                  else
                  {
                     §§push(param1.height);
                     if(_loc9_ || param3)
                     {
                        §§goto(addr67);
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(param1.premultipliedAlpha);
                  if(!(_loc8_ && param2))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_)
                  {
                     super(_loc5_,_loc6_,16777215,_loc7_);
                     while(true)
                     {
                        this.§[!H§ = param1;
                        while(true)
                        {
                           if(!param3)
                           {
                              continue;
                           }
                           §§push(this);
                           if(_loc9_ || param1)
                           {
                              if(§0Z§.§=2§)
                              {
                                 addr172:
                                 §§push(§]!=§.§8]§);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_ && param3)
                                    {
                                       addr195:
                                       §§pop().§?[§ = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          this.§0!Q§ = true;
                                          addr157:
                                          while(true)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§3L§ = param2;
                                                while(true)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      this.§1>§ = this.§3L§;
                                                      while(_loc9_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue;
                                                      addr134:
                                                   }
                                                   else
                                                   {
                                                      addr239:
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              else
                              {
                                 §§push(§]!=§.§=_§);
                                 if(!_loc8_)
                                 {
                                    §§goto(addr195);
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr172);
                        }
                     }
                  }
                  §§goto(addr157);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr41);
      }
      
      public static function §#v§(param1:Context3D, param2:Bitmap) : §>?§
      {
         return new §>?§(Texture.§#v§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§0!Q§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super.updateVertexData(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §"T§.setTexCoords(0,0,0);
               while(true)
               {
                  §"T§.setTexCoords(1,1,0);
                  loop2:
                  while(true)
                  {
                     §"T§.setTexCoords(2,0,1);
                     loop3:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           §"T§.setTexCoords(3,1,1);
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr60);
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §]0§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §"T§.copyTo(this.§2K§,0,1,this.§3L§ || param1,null);
         }
         do
         {
            this.§[!H§.adjustVertexData(this.§2K§,0,4);
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §"!1§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Rectangle = this.texture.§&V§;
         if(_loc4_ || _loc3_)
         {
            if(_loc1_)
            {
               addr30:
               §§push(Number(_loc1_.width));
               if(!_loc5_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr46:
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && _loc2_))
                  {
                     §§goto(addr54);
                  }
               }
            }
            else
            {
               §§push(this.texture.width);
               if(_loc4_ || this)
               {
                  §§goto(addr46);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc1_)
            {
               if(_loc1_)
               {
                  addr65:
                  §§push(Number(_loc1_.height));
                  if(!_loc5_)
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr91:
                     §§push(Number(§§pop()));
                     if(_loc4_ || _loc1_)
                     {
                        §§goto(addr99);
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && _loc1_))
                  {
                     §"T§.setPosition(0,0,0);
                     loop0:
                     while(true)
                     {
                        §"T§.setPosition(1,_loc2_,0);
                        while(true)
                        {
                           §"T§.setPosition(2,0,_loc3_);
                           loop2:
                           while(!_loc5_)
                           {
                              while(true)
                              {
                                 §"T§.setPosition(3,_loc2_,_loc3_);
                                 do
                                 {
                                    this.§]0§();
                                 }
                                 while(!(_loc4_ || _loc2_));
                                 
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr143);
               }
               else
               {
                  §§push(this.texture.height);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§goto(addr91);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr65);
         }
         §§goto(addr30);
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §"T§.setTexCoords(param1,param2.x,param2.y);
            do
            {
               this.§]0§();
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point();
         if(!(_loc4_ && _loc2_))
         {
            §"T§.getTexCoords(param1,_loc2_);
         }
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;Z§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§2K§.copyTo(param1,param2,param3,this.§3L§,param4);
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[!H§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1 != null)
            {
               loop0:
               while(param1 != this.§[!H§)
               {
                  loop1:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§[!H§ = param1;
                        loop3:
                        do
                        {
                           if(_loc2_)
                           {
                              §"T§.setPremultipliedAlpha(this.§[!H§.premultipliedAlpha);
                              while(_loc2_ || this)
                              {
                                 this.§]0§();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        while(!(_loc2_ || _loc3_));
                        
                        break loop0;
                     }
                  }
                  throw new ArgumentError("Texture cannot be null");
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr77);
      }
      
      public function get smoothing() : String
      {
         return this.§?[§;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§]!=§.§2!6§(param1))
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§?[§ = param1;
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
            this.§]0§();
         }
         while(!(_loc4_ || _loc3_));
         
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
               this.§]0§();
            }
            while(_loc4_);
            
         }
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            param1.batchQuad(this,param2,this.§[!H§,this.§?[§);
         }
      }
      
      override public function get useColor() : Boolean
      {
         return this.§3L§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if((param1 & 16777215) != 16777215)
            {
               this.§3L§ = true;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     super.color = param1;
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§]0§();
                           if(_loc3_ || param1)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 break loop1;
                              }
                              break;
                           }
                           continue;
                        }
                     }
                     addr97:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§3L§ = this.§1>§;
            §§goto(addr97);
         }
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[!H§.clippedBitmapData;
      }
   }
}
