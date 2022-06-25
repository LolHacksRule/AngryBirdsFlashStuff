package §8!?§
{
   import §'_§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!B§
   {
       
      
      private var §!!!§:Texture;
      
      private var §3!I§:BitmapData;
      
      private var §-N§:Rectangle;
      
      private var §!T§:BitmapData;
      
      private var §@!h§:int;
      
      private var §#O§:int;
      
      private var §[+§:Number = 1.0;
      
      public function §?!B§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§!!!§ = param1;
               loop1:
               while(!_loc8_)
               {
                  this.§3!I§ = param2;
                  while(true)
                  {
                     this.§-N§ = param3.clone();
                     loop3:
                     while(_loc7_ || param3)
                     {
                        if(_loc8_)
                        {
                           continue loop1;
                        }
                        this.§@!h§ = param4;
                        while(true)
                        {
                           this.§#O§ = param5;
                           loop5:
                           while(!(_loc8_ && param1))
                           {
                              while(true)
                              {
                                 this.§[+§ = param6;
                                 if(!_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function get texture() : Texture
      {
         return this.§!!!§;
      }
      
      public function get pivotX() : int
      {
         return this.§@!h§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§#O§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!!!§.width);
         if(_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!!!§.height);
         if(_loc1_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§!T§)
            {
               do
               {
                  this.§!T§ = new BitmapData(this.§-N§.width,this.§-N§.height);
                  do
                  {
                     this.§!T§.copyPixels(this.§3!I§,this.§-N§,new Point(0,0));
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(!_loc1_);
               
               addr72:
            }
            return this.§!T§;
         }
         §§goto(addr72);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@!h§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#O§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!!!§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§!!!§);
                  }
               }
            }
            while(true)
            {
               §§pop().dispose();
               §§goto(addr106);
            }
         }
         §§goto(addr64);
      }
   }
}
