package §5`§
{
   import §7!=§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%F§
   {
       
      
      private var §[#§:Texture;
      
      private var §9P§:BitmapData;
      
      private var §2f§:Rectangle;
      
      private var §2A§:BitmapData;
      
      private var §3!4§:int;
      
      private var §;!0§:int;
      
      private var §]H§:Number = 1.0;
      
      public function §%F§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            this.§[#§ = param1;
         }
         this.§9P§ = param2;
         if(!(_loc8_ && param3))
         {
            this.§2f§ = param3.clone();
            if(!(_loc8_ && param1))
            {
               this.§3!4§ = param4;
               if(_loc7_)
               {
                  addr69:
                  this.§;!0§ = param5;
               }
               this.§]H§ = param6;
               §§goto(addr75);
            }
            §§goto(addr69);
         }
         addr75:
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function get texture() : Texture
      {
         return this.§[#§;
      }
      
      public function get pivotX() : int
      {
         return this.§3!4§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;!0§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[#§.width);
         if(!(_loc1_ && this))
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[#§.height);
         if(!(_loc1_ && this))
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§2A§)
            {
               if(!_loc2_)
               {
                  this.§2A§ = new BitmapData(this.§2f§.width,this.§2f§.height);
                  if(_loc1_)
                  {
                     addr45:
                     this.§2A§.copyPixels(this.§9P§,this.§2f§,new Point(0,0));
                  }
               }
               §§goto(addr45);
            }
            return this.§2A§;
         }
         §§goto(addr45);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3!4§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§;!0§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[#§);
         if(!_loc1_)
         {
            if(§§pop())
            {
               if(_loc2_ || this)
               {
                  addr51:
                  this.§[#§.dispose();
                  if(_loc2_ || _loc1_)
                  {
                     this.§[#§ = null;
                     §§goto(addr62);
                  }
               }
               §§goto(addr65);
            }
            addr62:
            if(this.§9P§)
            {
               addr65:
               this.§9P§.dispose();
               this.§9P§ = null;
            }
            return;
         }
         §§goto(addr51);
      }
   }
}
