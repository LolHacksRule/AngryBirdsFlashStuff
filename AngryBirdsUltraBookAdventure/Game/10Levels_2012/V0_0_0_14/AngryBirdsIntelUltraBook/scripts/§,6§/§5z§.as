package §,6§
{
   import §!!9§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5z§
   {
       
      
      private var §,!Q§:Texture;
      
      private var §5!r§:BitmapData;
      
      private var §<D§:Rectangle;
      
      private var §^b§:BitmapData;
      
      private var §if §:int;
      
      private var §2w§:int;
      
      private var §!+§:Number = 1.0;
      
      public function §5z§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§,!Q§ = param1;
               while(true)
               {
                  this.§5!r§ = param2;
                  while(!_loc7_)
                  {
                     loop6:
                     while(_loc8_ || param2)
                     {
                        continue loop0;
                        this.§!+§ = param6;
                        if(_loc7_)
                        {
                           continue;
                        }
                        addr35:
                        if(_loc8_ || param1)
                        {
                           return;
                        }
                        addr99:
                        while(!(_loc7_ && param1))
                        {
                           this.§2w§ = param5;
                           continue loop6;
                           §§goto(addr35);
                        }
                        while(true)
                        {
                           this.§if § = param4;
                           §§goto(addr86);
                        }
                        addr86:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<D§ = param3.clone();
            §§goto(addr99);
         }
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function get texture() : Texture
      {
         return this.§,!Q§;
      }
      
      public function get pivotX() : int
      {
         return this.§if § * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§2w§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,!Q§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,!Q§.height);
         if(_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§^b§)
            {
               loop0:
               while(true)
               {
                  this.§^b§ = new BitmapData(this.§<D§.width,this.§<D§.height);
                  addr85:
                  while(true)
                  {
                     this.§^b§.copyPixels(this.§5!r§,this.§<D§,new Point(0,0));
                     if(!_loc2_)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return this.§^b§;
         }
         §§goto(addr85);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§if § = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2w§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§,!Q§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  addr97:
                  while(true)
                  {
                     §§push(this.§,!Q§);
                     addr99:
                     while(true)
                     {
                        §§pop().dispose();
                        addr100:
                        while(true)
                        {
                           this.§,!Q§ = null;
                           addr86:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr97:
               }
               loop0:
               for(; this.§5!r§; §§goto(addr86))
               {
                  loop1:
                  while(!(_loc1_ && this))
                  {
                     this.§5!r§.dispose();
                     while(_loc2_)
                     {
                        this.§5!r§ = null;
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        if(_loc1_ && _loc1_)
                        {
                           continue loop1;
                        }
                        if(!_loc1_)
                        {
                           break loop0;
                        }
                        §§goto(addr97);
                     }
                     continue loop0;
                  }
                  §§goto(addr100);
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr97);
      }
   }
}
