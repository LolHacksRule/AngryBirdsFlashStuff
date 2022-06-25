package §,!_§
{
   import §7i§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;K§
   {
       
      
      private var §5@§:Texture;
      
      private var §"!_§:BitmapData;
      
      private var §1!i§:Rectangle;
      
      private var § §:BitmapData;
      
      private var §0!>§:int;
      
      private var §+<§:int;
      
      private var §7!H§:Number = 1.0;
      
      public function §;K§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§5@§ = param1;
               loop1:
               while(!_loc8_)
               {
                  this.§"!_§ = param2;
                  while(true)
                  {
                     this.§1!i§ = param3.clone();
                     loop3:
                     while(_loc7_ || param3)
                     {
                        if(_loc8_)
                        {
                           continue loop1;
                        }
                        this.§0!>§ = param4;
                        while(true)
                        {
                           this.§+<§ = param5;
                           loop5:
                           while(!(_loc8_ && param1))
                           {
                              while(true)
                              {
                                 this.§7!H§ = param6;
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
         return this.§7!H§;
      }
      
      public function get texture() : Texture
      {
         return this.§5@§;
      }
      
      public function get pivotX() : int
      {
         return this.§0!>§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+<§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5@§.width);
         if(_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5@§.height);
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
            if(!this.§ §)
            {
               do
               {
                  this.§ § = new BitmapData(this.§1!i§.width,this.§1!i§.height);
                  do
                  {
                     this.§ §.copyPixels(this.§"!_§,this.§1!i§,new Point(0,0));
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(!_loc1_);
               
               addr72:
            }
            return this.§ §;
         }
         §§goto(addr72);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§0!>§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+<§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§5@§);
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
                     §§push(this.§5@§);
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
