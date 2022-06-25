package §_-8d§
{
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-vz§
   {
       
      
      private var §_-7u§:Texture;
      
      private var §_-B0§:BitmapData;
      
      private var §_-M0§:Rectangle;
      
      private var §_-YJ§:BitmapData;
      
      private var §_-7r§:int;
      
      private var §_-yG§:int;
      
      private var §_-XE§:Number = 1.0;
      
      public function §_-vz§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.§_-7u§ = param1;
               loop1:
               while(_loc8_ || param2)
               {
                  this.§_-B0§ = param2;
                  do
                  {
                     this.§_-M0§ = param3.clone();
                     loop3:
                     do
                     {
                        this.§_-7r§ = param4;
                        while(!_loc7_)
                        {
                           this.§_-yG§ = param5;
                           do
                           {
                              this.§_-XE§ = param6;
                           }
                           while(!_loc8_);
                           
                           if(!(_loc7_ && this))
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(_loc7_ && param2);
                     
                  }
                  while(_loc7_ && param3);
                  
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-7u§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-7r§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§_-yG§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-7u§.width);
         if(_loc2_ || _loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-7u§.height);
         if(_loc2_ || _loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!this.§_-YJ§)
            {
               if(!(_loc2_ && this))
               {
                  this.§_-YJ§ = new BitmapData(this.§_-M0§.width,this.§_-M0§.height);
               }
               do
               {
                  this.§_-YJ§.copyPixels(this.§_-B0§,this.§_-M0§,new Point(0,0));
               }
               while(_loc2_ && _loc1_);
               
               addr69:
            }
            return this.§_-YJ§;
         }
         §§goto(addr69);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-7r§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-yG§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-7u§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-7u§);
                     addr98:
                     while(true)
                     {
                        §§pop().dispose();
                        loop6:
                        while(true)
                        {
                           this.§_-7u§ = null;
                           addr81:
                           addr90:
                           while(true)
                           {
                              if(_loc1_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(this.§_-B0§)
                  {
                     loop2:
                     while(true)
                     {
                        this.§_-B0§.dispose();
                        while(!(_loc2_ && this))
                        {
                           this.§_-B0§ = null;
                           if(_loc1_)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr81);
                     }
                     addr51:
                     break;
                  }
                  break;
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr51);
      }
   }
}
