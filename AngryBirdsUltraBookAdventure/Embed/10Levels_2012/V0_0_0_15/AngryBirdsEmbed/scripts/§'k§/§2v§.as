package §'k§
{
   import §5!@§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2v§
   {
       
      
      private var §7#§:Texture;
      
      private var § 5§:BitmapData;
      
      private var §6!D§:Rectangle;
      
      private var §@?§:BitmapData;
      
      private var §3O§:int;
      
      private var §=A§:int;
      
      private var §!!%§:Number = 1.0;
      
      public function §2v§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(_loc7_)
            {
               this.§7#§ = param1;
               if(_loc7_)
               {
                  this.§ 5§ = param2;
                  §§goto(addr50);
               }
               §§goto(addr69);
            }
            §§goto(addr56);
         }
         addr50:
         this.§6!D§ = param3.clone();
         if(_loc7_)
         {
            addr56:
            this.§3O§ = param4;
         }
         this.§=A§ = param5;
         if(!(_loc8_ && param2))
         {
            addr69:
            this.§!!%§ = param6;
         }
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function get texture() : Texture
      {
         return this.§7#§;
      }
      
      public function get pivotX() : int
      {
         return this.§3O§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§=A§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§7#§.width);
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
         §§push(this.§7#§.height);
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
            if(!this.§@?§)
            {
               if(_loc2_)
               {
                  this.§@?§ = new BitmapData(this.§6!D§.width,this.§6!D§.height);
                  addr39:
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§@?§.copyPixels(this.§ 5§,this.§6!D§,new Point(0,0));
                  }
               }
            }
            return this.§@?§;
         }
         §§goto(addr39);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3O§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§=A§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§7#§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr58:
                     this.§7#§.dispose();
                  }
                  this.§7#§ = null;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr69:
                     if(!this.§ 5§)
                     {
                     }
                     §§goto(addr85);
                  }
                  this.§ 5§.dispose();
                  if(!(_loc1_ && this))
                  {
                     this.§ 5§ = null;
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
