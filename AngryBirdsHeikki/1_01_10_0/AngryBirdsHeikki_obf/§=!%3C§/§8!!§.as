package §=!<§
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!!§
   {
       
      
      private var §-y§:Texture;
      
      private var §+!C§:BitmapData;
      
      private var §0!4§:Rectangle;
      
      private var §+<§:BitmapData;
      
      private var §var §:int;
      
      private var §9!K§:int;
      
      private var get:Number = 1.0;
      
      public function §8!!§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§-y§ = param1;
               addr90:
               while(true)
               {
                  this.§+!C§ = param2;
                  continue loop0;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function get texture() : Texture
      {
         return this.§-y§;
      }
      
      public function get pivotX() : int
      {
         return this.§var § * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§9!K§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§-y§.width);
         if(_loc2_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-y§.height);
         if(!_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§+<§)
            {
               do
               {
                  this.§+<§ = new BitmapData(this.§0!4§.width,this.§0!4§.height);
                  do
                  {
                     this.§+<§.copyPixels(this.§+!C§,this.§0!4§,new Point(0,0));
                  }
                  while(_loc1_ && this);
                  
               }
               while(!(_loc2_ || _loc1_));
               
               addr62:
            }
            return this.§+<§;
         }
         §§goto(addr62);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§var § = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!K§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§-y§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§-y§);
                     addr108:
                     while(true)
                     {
                        §§pop().dispose();
                        addr109:
                        while(true)
                        {
                           this.§-y§ = null;
                           addr85:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr106:
               }
               loop1:
               for(; this.§+!C§; §§goto(addr85))
               {
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§+!C§.dispose();
                     while(_loc1_ || _loc1_)
                     {
                        this.§+!C§ = null;
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        if(!(_loc1_ || _loc2_))
                        {
                           continue loop2;
                        }
                        if(_loc1_)
                        {
                           break loop1;
                        }
                        §§goto(addr106);
                     }
                     continue loop1;
                  }
                  §§goto(addr109);
               }
               return;
            }
            §§goto(addr108);
         }
         §§goto(addr109);
      }
   }
}
