package §9K§
{
   import §0! §.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,z§
   {
       
      
      private var §;p§:Texture;
      
      private var §<j§:BitmapData;
      
      private var §,!8§:Rectangle;
      
      private var §#!B§:BitmapData;
      
      private var §!!J§:int;
      
      private var §[R§:int;
      
      private var §-_§:Number = 1.0;
      
      public function §,z§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         super();
         if(_loc7_)
         {
            this.§;p§ = param1;
         }
         this.§<j§ = param2;
         if(!(_loc8_ && this))
         {
            this.§,!8§ = param3.clone();
            this.§!!J§ = param4;
            if(!_loc8_)
            {
               this.§[R§ = param5;
            }
         }
         this.§-_§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function get texture() : Texture
      {
         return this.§;p§;
      }
      
      public function get pivotX() : int
      {
         return this.§!!J§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§[R§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;p§.width);
         if(!(_loc1_ && this))
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;p§.height);
         if(_loc1_)
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§#!B§)
            {
               if(_loc1_)
               {
                  this.§#!B§ = new BitmapData(this.§,!8§.width,this.§,!8§.height);
                  addr33:
                  if(_loc2_ && _loc2_)
                  {
                  }
                  §§goto(addr71);
               }
               this.§#!B§.copyPixels(this.§<j§,this.§,!8§,new Point(0,0));
            }
            addr71:
            return this.§#!B§;
         }
         §§goto(addr33);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§!!J§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[R§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;p§);
         if(_loc1_)
         {
            if(§§pop())
            {
               addr33:
               this.§;p§.dispose();
               this.§;p§ = null;
               if(_loc1_)
               {
                  §§goto(addr39);
               }
               §§goto(addr44);
            }
            addr39:
            if(this.§<j§)
            {
               if(_loc1_)
               {
                  addr44:
                  this.§<j§.dispose();
                  this.§<j§ = null;
               }
            }
            return;
         }
         §§goto(addr33);
      }
   }
}
