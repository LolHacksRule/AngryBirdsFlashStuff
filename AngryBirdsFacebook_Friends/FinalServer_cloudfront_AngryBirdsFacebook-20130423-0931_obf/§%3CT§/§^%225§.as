package §<T§
{
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^"5§
   {
       
      
      private var §,b§:Texture;
      
      private var §0!§:BitmapData;
      
      private var §["U§:Rectangle;
      
      private var §-!X§:BitmapData;
      
      private var §5'§:int;
      
      private var §>K§:int;
      
      private var §<[§:Number = 1.0;
      
      public function §^"5§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
         }
         while(true)
         {
            this.§,b§ = param1;
            loop1:
            while(true)
            {
               this.§0!§ = param2;
               loop2:
               do
               {
                  this.§["U§ = param3.clone();
                  while(true)
                  {
                     this.§5'§ = param4;
                     while(_loc7_)
                     {
                        this.§>K§ = param5;
                        continue loop1;
                        if(!(_loc8_ && param3))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               while(_loc8_);
               
               return;
            }
            if(_loc8_ && param2)
            {
               continue;
            }
            §§goto(addr82);
         }
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function get texture() : Texture
      {
         return this.§,b§;
      }
      
      public function get pivotX() : int
      {
         return this.§5'§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>K§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,b§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,b§.height);
         if(_loc1_ || _loc1_)
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
            if(!this.§-!X§)
            {
               do
               {
                  this.§-!X§ = new BitmapData(this.§["U§.width,this.§["U§.height);
                  do
                  {
                     this.§-!X§.copyPixels(this.§0!§,this.§["U§,new Point(0,0));
                  }
                  while(_loc2_ && this);
                  
               }
               while(!(_loc1_ || _loc2_));
               
               addr76:
            }
            return this.§-!X§;
         }
         §§goto(addr76);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5'§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>K§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§,b§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,b§);
                     addr103:
                     while(true)
                     {
                        §§pop().dispose();
                        addr104:
                        while(true)
                        {
                           this.§,b§ = null;
                           addr90:
                           while(true)
                           {
                           }
                        }
                     }
                     addr78:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     this.§0!§ = null;
                     addr85:
                     if(!(_loc1_ || _loc2_))
                     {
                        while(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr78);
                           §§goto(addr85);
                        }
                        §§goto(addr104);
                        addr61:
                     }
                     §§goto(addr19);
                  }
               }
               for(; this.§0!§; §§goto(addr90))
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§0!§.dispose();
                     }
                  }
                  §§goto(addr61);
               }
               addr19:
               return;
            }
            §§goto(addr103);
         }
         §§goto(addr58);
      }
   }
}
