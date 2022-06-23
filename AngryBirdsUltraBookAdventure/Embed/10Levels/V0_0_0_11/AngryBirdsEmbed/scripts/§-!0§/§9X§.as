package §-!0§
{
   import each.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9X§
   {
       
      
      private var §]s§:Texture;
      
      private var §"!<§:BitmapData;
      
      private var §-e§:Rectangle;
      
      private var §4@§:BitmapData;
      
      private var §^A§:int;
      
      private var §6W§:int;
      
      private var §=!%§:Number = 1.0;
      
      public function §9X§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(_loc7_)
            {
               this.§]s§ = param1;
               if(_loc7_)
               {
                  this.§"!<§ = param2;
                  §§goto(addr50);
               }
               §§goto(addr69);
            }
            §§goto(addr56);
         }
         addr50:
         this.§-e§ = param3.clone();
         if(_loc7_)
         {
            addr56:
            this.§^A§ = param4;
         }
         this.§6W§ = param5;
         if(!(_loc8_ && param2))
         {
            addr69:
            this.§=!%§ = param6;
         }
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function get texture() : Texture
      {
         return this.§]s§;
      }
      
      public function get pivotX() : int
      {
         return this.§^A§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§6W§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]s§.width);
         if(_loc1_)
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]s§.height);
         if(_loc1_)
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§4@§)
            {
               if(_loc2_)
               {
                  this.§4@§ = new BitmapData(this.§-e§.width,this.§-e§.height);
                  addr39:
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§4@§.copyPixels(this.§"!<§,this.§-e§,new Point(0,0));
                  }
               }
            }
            return this.§4@§;
         }
         §§goto(addr39);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^A§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§6W§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§]s§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr58:
                     this.§]s§.dispose();
                  }
                  this.§]s§ = null;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr69:
                     if(!this.§"!<§)
                     {
                     }
                     §§goto(addr85);
                  }
                  this.§"!<§.dispose();
                  if(!(_loc1_ && this))
                  {
                     this.§"!<§ = null;
                     §§goto(addr85);
                  }
                  addr85:
                  return;
               }
               §§goto(addr69);
            }
            §§goto(addr58);
         }
         §§goto(addr69);
      }
   }
}
