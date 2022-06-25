package §_-aU§
{
   import §_-5§.b2Color;
   import §_-5§.b2internal;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-vn§:uint = 1;
      
      public static var §_-x1§:uint = 2;
      
      public static var §_-Wa§:uint = 4;
      
      public static var §_-0E1§:uint = 8;
      
      public static var §_-d6§:uint = 16;
      
      public static var §_-Mo§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-vn§ = 1;
            while(true)
            {
               §_-x1§ = 2;
               loop1:
               while(!_loc1_)
               {
                  §_-Wa§ = 4;
                  loop2:
                  do
                  {
                     §_-0E1§ = 8;
                     while(_loc2_)
                     {
                        §_-d6§ = 16;
                        while(_loc2_ || _loc1_)
                        {
                           §_-Mo§ = 32;
                           if(!(_loc1_ && b2DebugDraw))
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
                  while(_loc1_);
                  
               }
            }
         }
      }
      
      private var §_-ZH§:uint;
      
      b2internal var §_-f9§:Sprite;
      
      private var §_-qm§:Number = 1.0;
      
      private var §_-KQ§:Number = 1.0;
      
      private var §_-iu§:Number = 1.0;
      
      private var §_-mF§:Number = 1.0;
      
      private var §_-XS§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         do
         {
            this.§_-ZH§ = 0;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §_-Tm§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-ZH§ = param1;
         }
      }
      
      public function §_-0p§() : uint
      {
         return this.§_-ZH§;
      }
      
      public function §_-0Bo§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-ZH§ |= param1;
         }
      }
      
      public function §_-zB§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-ZH§ &= ~param1;
         }
      }
      
      public function §_-G4§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-f9§ = param1;
         }
      }
      
      public function §_-IQ§() : Sprite
      {
         return this.§_-f9§;
      }
      
      public function §_-mQ§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-qm§ = param1;
         }
      }
      
      public function §_-Bo§() : Number
      {
         return this.§_-qm§;
      }
      
      public function §_-02O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-KQ§ = param1;
         }
      }
      
      public function §_-04B§() : Number
      {
         return this.§_-KQ§;
      }
      
      public function §_-u1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-iu§ = param1;
         }
      }
      
      public function §_-ZU§() : Number
      {
         return this.§_-iu§;
      }
      
      public function §_-rX§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-mF§ = param1;
         }
      }
      
      public function §_-NA§() : Number
      {
         return this.§_-mF§;
      }
      
      public function §_-tj§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-XS§ = param1;
         }
      }
      
      public function §_-04y§() : Number
      {
         return this.§_-XS§;
      }
      
      public function §default§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
            if(!_loc5_)
            {
               this.§_-f9§.graphics.moveTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
               addr36:
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     this.§_-f9§.graphics.lineTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
                     break;
                  }
                  loop1:
                  while(!(_loc6_ || this))
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§_-f9§.graphics.lineTo(param1[_loc4_].x * this.§_-qm§,param1[_loc4_].y * this.§_-qm§);
               §§goto(addr138);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §_-Oc§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  this.§_-f9§.graphics.moveTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
                  addr61:
                  while(!_loc6_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§_-f9§.graphics.beginFill(param3.color,this.§_-mF§);
            if(_loc5_ || param2)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr42);
            }
            §§goto(addr61);
         }
         var _loc4_:int = 1;
         loop4:
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(!_loc6_)
               {
                  this.§_-f9§.graphics.lineTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
               }
               while(!_loc6_)
               {
                  this.§_-f9§.graphics.endFill();
                  if(_loc6_ && param3)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break loop4;
                  }
                  _loc4_++;
                  break;
                  addr167:
               }
               continue;
            }
            this.§_-f9§.graphics.lineTo(param1[_loc4_].x * this.§_-qm§,param1[_loc4_].y * this.§_-qm§);
            §§goto(addr167);
         }
      }
      
      public function §_-iK§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
         }
         do
         {
            this.§_-f9§.graphics.drawCircle(param1.x * this.§_-qm§,param1.y * this.§_-qm§,param2 * this.§_-qm§);
         }
         while(!_loc4_);
         
      }
      
      public function §_-7J§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param4.color,this.§_-iu§);
            loop0:
            while(true)
            {
               this.§_-f9§.graphics.moveTo(0,0);
               while(true)
               {
                  this.§_-f9§.graphics.beginFill(param4.color,this.§_-mF§);
                  while(_loc6_)
                  {
                     if(_loc6_)
                     {
                        this.§_-f9§.graphics.drawCircle(param1.x * this.§_-qm§,param1.y * this.§_-qm§,param2 * this.§_-qm§);
                        while(_loc6_ || param3)
                        {
                           this.§_-f9§.graphics.endFill();
                           loop4:
                           while(!(_loc5_ && this))
                           {
                              while(true)
                              {
                                 this.§_-f9§.graphics.moveTo(param1.x * this.§_-qm§,param1.y * this.§_-qm§);
                                 do
                                 {
                                    this.§_-f9§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-qm§,(param1.y + param3.y * param2) * this.§_-qm§);
                                 }
                                 while(_loc5_ && param3);
                                 
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §_-T4§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
            do
            {
               this.§_-f9§.graphics.moveTo(param1.x * this.§_-qm§,param1.y * this.§_-qm§);
               do
               {
                  this.§_-f9§.graphics.lineTo(param2.x * this.§_-qm§,param2.y * this.§_-qm§);
               }
               while(_loc4_);
               
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function §_-As§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-f9§.graphics.lineStyle(this.§_-KQ§,16711680,this.§_-iu§);
            loop0:
            do
            {
               this.§_-f9§.graphics.moveTo(param1.position.x * this.§_-qm§,param1.position.y * this.§_-qm§);
               while(true)
               {
                  this.§_-f9§.graphics.lineTo((param1.position.x + this.§_-XS§ * param1.R.col1.x) * this.§_-qm§,(param1.position.y + this.§_-XS§ * param1.R.col1.y) * this.§_-qm§);
                  loop2:
                  while(_loc3_)
                  {
                     this.§_-f9§.graphics.lineStyle(this.§_-KQ§,65280,this.§_-iu§);
                     loop3:
                     do
                     {
                        this.§_-f9§.graphics.moveTo(param1.position.x * this.§_-qm§,param1.position.y * this.§_-qm§);
                        while(_loc3_)
                        {
                           this.§_-f9§.graphics.lineTo((param1.position.x + this.§_-XS§ * param1.R.col2.x) * this.§_-qm§,(param1.position.y + this.§_-XS§ * param1.R.col2.y) * this.§_-qm§);
                           if(_loc3_ || param1)
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(!(_loc3_ || this));
                     
                     continue loop0;
                  }
               }
            }
            while(_loc2_ && param1);
            
         }
      }
   }
}
