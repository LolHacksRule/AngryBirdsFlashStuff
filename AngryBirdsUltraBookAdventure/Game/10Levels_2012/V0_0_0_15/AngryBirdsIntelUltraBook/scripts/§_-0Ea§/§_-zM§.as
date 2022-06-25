package §_-0Ea§
{
   import §_-UD§.*;
   import §_-uY§.*;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §_-zM§
   {
      
      private static var §_-TO§:Array;
      
      private static var §_-n1§:Program3D;
      
      private static var §_-J3§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-J3§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §_-0Aw§:Matrix3D;
      
      private var §_-KC§:Matrix3D;
      
      private var §_-Uy§:Matrix3D;
      
      private var §_-rW§:Vector.<Matrix3D>;
      
      private var §_-0Cf§:int;
      
      private var §_-02J§:Vector.<§_-XW§>;
      
      private var §_-iU§:int;
      
      private var §_-cM§:Context3D;
      
      private var §_-Wy§:int = -1;
      
      public function §_-zM§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-0Aw§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§_-KC§ = new Matrix3D();
                  addr153:
                  while(true)
                  {
                     this.§_-Uy§ = new Matrix3D();
                     while(true)
                     {
                        this.§_-rW§ = new Vector.<Matrix3D>(0);
                        loop4:
                        for(; _loc1_ || _loc1_; while(!(_loc2_ && this))
                        {
                           this.§_-02J§ = new Vector.<§_-XW§>();
                           continue loop1;
                        })
                        {
                           this.§_-0Cf§ = 0;
                           while(true)
                           {
                              this.§_-iU§ = 0;
                              continue loop4;
                           }
                        }
                     }
                  }
                  loop7:
                  while(!(_loc2_ && this))
                  {
                     if(§_-TO§ == null)
                     {
                        while(_loc1_)
                        {
                           while(true)
                           {
                              §_-TO§ = [];
                              addr82:
                              while(true)
                              {
                              }
                           }
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           addr40:
                           if(!_loc2_)
                           {
                              return;
                           }
                           §§goto(addr153);
                        }
                        continue loop0;
                     }
                     loop9:
                     while(true)
                     {
                        this.§_-iZ§();
                        loop10:
                        while(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 this.§_-hh§(400,300);
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 continue loop9;
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr102);
                        }
                        continue loop7;
                     }
                     §§goto(addr40);
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public static function §_-003§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            param2.§_-cb§(param1);
         }
      }
      
      public static function §_-jw§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc6_ && _loc3_))
         {
            if(param2)
            {
               addr39:
               §§push(Context3DBlendFactor.ONE);
               if(!(_loc6_ && param1))
               {
                  addr65:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc6_)
               {
                  §§goto(addr65);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc5_ || §_-zM§)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§_-Jy§.§throw§(param2) / 255,§_-Jy§.§_-OU§(param2) / 255,§_-Jy§.§_-Gv§(param2) / 255,param3);
         }
      }
      
      protected function get §_-Sd§() : Matrix3D
      {
         return this.§_-KC§;
      }
      
      protected function get §_-Kg§() : Matrix3D
      {
         return this.§_-0Aw§;
      }
      
      public function §_-l7§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-cM§ = param1;
         }
         do
         {
            this.§_-Wy§ = param2;
         }
         while(!_loc4_);
         
      }
      
      public function get §_-FC§() : Context3D
      {
         return this.§_-cM§;
      }
      
      public function get §_-dH§() : int
      {
         return this.§_-Wy§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-XW§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-02J§)
         {
            if(!_loc5_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc2_)
         {
            §§push(§_-AY§.§_-un§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr81);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
         }
         addr81:
         if(_loc4_)
         {
            §§push(§_-AY§.§_-un§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§_-Jy§.§throw§(param2) / 255,§_-Jy§.§_-OU§(param2) / 255,§_-Jy§.§_-Gv§(param2) / 255,param3);
         }
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-02J§ = new <§_-XW§>[new §_-XW§()];
         }
      }
      
      public function §_-hh§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §_-J3§[0] = 2 / param1;
            if(!(_loc7_ && param3))
            {
               §_-J3§[1] = §_-J3§[2] = §_-J3§[3] = §_-J3§[4] = 0;
               if(!(_loc7_ && this))
               {
                  §_-J3§[5] = -2 / param2;
                  if(!_loc7_)
                  {
                     §_-J3§[6] = §_-J3§[7] = §_-J3§[8] = §_-J3§[9] = 0;
                     if(!_loc7_)
                     {
                        §_-J3§[10] = -2 / (param4 - param3);
                        loop0:
                        while(true)
                        {
                           §_-J3§[11] = 0;
                           addr187:
                           while(true)
                           {
                              §_-J3§[12] = -1;
                              addr181:
                              while(true)
                              {
                                 §_-J3§[13] = 1;
                                 continue loop0;
                              }
                           }
                        }
                        addr196:
                     }
                     return;
                  }
                  §§goto(addr196);
               }
               §§goto(addr181);
            }
            §§goto(addr152);
         }
         §§goto(addr181);
      }
      
      public function §_-iZ§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§_-KC§.identity();
         }
      }
      
      public function §_-0C-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-KC§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §_-dV§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§_-KC§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §_-4e§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-KC§.prependScale(param1,param2,param3);
         }
      }
      
      public function §_-cb§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.§_-cb§(this.§_-KC§);
         }
      }
      
      public function §_-1d§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§_-rW§.length < this.§_-0Cf§ + 1)
            {
               if(!_loc4_)
               {
                  addr48:
                  this.§_-rW§.push(new Matrix3D());
                  if(_loc3_)
                  {
                     addr55:
                     this.§_-rW§[this.§_-0Cf§++].copyFrom(this.§_-KC§);
                  }
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr48);
      }
      
      public function §_-OE§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§_-KC§.copyFrom(this.§_-rW§[--this.§_-0Cf§]);
         }
      }
      
      public function §_-h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-0Cf§ = 0;
         }
         do
         {
            this.§_-iZ§();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function get §_-bc§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-Uy§.identity();
            while(true)
            {
               this.§_-Uy§.append(this.§_-KC§);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§_-Uy§.append(this.§_-0Aw§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§_-Uy§;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function batchQuad(param1:§_-2p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(this.§_-0EC§);
            while(true)
            {
               if(!§§pop().§_-P0§(param1,param3,param4))
               {
                  continue;
               }
               while(true)
               {
                  this.§_-oR§();
               }
            }
         }
         while(true)
         {
            §§goto(addr39);
         }
      }
      
      public function §_-oR§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§_-0EC§);
            if(_loc4_ || _loc1_)
            {
               if(§§pop().dynamic > 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(this.§_-0EC§);
                     if(_loc4_)
                     {
                        §§pop().render(this.§_-FC§,this.§_-0Aw§);
                        §§goto(addr114);
                     }
                     §§pop().reset();
                     if(_loc4_)
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§_-iU§);
                        if(_loc4_ || _loc1_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc3_)
                        {
                           _loc1_.§_-iU§ = _loc2_;
                        }
                        if(!_loc3_)
                        {
                           if(this.§_-02J§.length <= this.§_-iU§)
                           {
                              if(_loc4_ || _loc1_)
                              {
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  this.§_-02J§.push(new §_-XW§());
               }
            }
            §§goto(addr114);
         }
         addr114:
         if(_loc4_)
         {
            §§push(this.§_-0EC§);
         }
      }
      
      public function §_-zz§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-h§();
            do
            {
               this.§_-iU§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.present();
         }
      }
      
      private function get §_-0EC§() : §_-XW§
      {
         return this.§_-02J§[this.§_-iU§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3 != §_-TO§[param2])
            {
               do
               {
                  §_-TO§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc4_ && param3);
                  
               }
               while(!(_loc5_ || param2));
               
               addr69:
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != §_-n1§)
            {
               do
               {
                  §_-n1§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(!(_loc3_ || this));
                  
               }
               while(_loc4_);
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
   }
}
