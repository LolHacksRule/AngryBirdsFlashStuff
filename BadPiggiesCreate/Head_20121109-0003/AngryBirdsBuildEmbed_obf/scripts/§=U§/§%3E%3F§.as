package §=U§
{
   import §0!-§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>?§
   {
       
      
      private var §8w§:Texture;
      
      private var §[0§:BitmapData;
      
      private var §%!!§:Rectangle;
      
      private var §!W§:BitmapData;
      
      private var §-!V§:int;
      
      private var §;!A§:int;
      
      private var §7P§:Number = 1.0;
      
      public function §>?§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         this.§8w§ = param1;
         this.§[0§ = param2;
         this.§%!!§ = param3.clone();
         this.§-!V§ = param4;
         this.§;!A§ = param5;
         this.§7P§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function get texture() : Texture
      {
         return this.§8w§;
      }
      
      public function get pivotX() : int
      {
         return this.§-!V§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;!A§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8w§.width);
         if(!_loc1_)
         {
            §§push(§§pop() * this.scale);
         }
         return §§pop();
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§8w§.height);
         if(!_loc2_)
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
            if(!this.§!W§)
            {
               if(!_loc2_)
               {
                  this.§!W§ = new BitmapData(this.§%!!§.width,this.§%!!§.height);
                  if(_loc1_ || _loc1_)
                  {
                     addr60:
                     this.§!W§.copyPixels(this.§[0§,this.§%!!§,new Point(0,0));
                  }
               }
               §§goto(addr60);
            }
            return this.§!W§;
         }
         §§goto(addr60);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!V§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!A§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§8w§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr40:
                  this.§8w§.dispose();
                  this.§8w§ = null;
               }
               if(this.§[0§)
               {
                  this.§[0§.dispose();
                  if(!_loc2_)
                  {
                     this.§[0§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr40);
      }
   }
}
