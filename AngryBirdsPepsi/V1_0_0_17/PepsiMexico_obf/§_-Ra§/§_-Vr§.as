package §_-Ra§
{
   import §_-4g§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Vr§
   {
       
      
      private var §_-cX§:Texture;
      
      private var §_-LZ§:BitmapData;
      
      private var §_-Cq§:Rectangle;
      
      private var §_-Xl§:BitmapData;
      
      private var §_-ov§:int;
      
      private var §_-eM§:int;
      
      public function §_-Vr§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         this.§_-cX§ = param1;
         if(_loc6_ || this)
         {
            this.§_-LZ§ = param2;
            this.§_-Cq§ = param3.clone();
            if(_loc6_ || this)
            {
               §§goto(addr53);
            }
            §§goto(addr58);
         }
         addr53:
         this.§_-ov§ = param4;
         if(_loc6_)
         {
            addr58:
            this.§_-eM§ = param5;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§_-cX§;
      }
      
      public function get pivotX() : int
      {
         return this.§_-ov§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-eM§;
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§_-Xl§)
            {
               if(_loc2_ || this)
               {
                  this.§_-Xl§ = new BitmapData(this.§_-Cq§.width,this.§_-Cq§.height);
                  if(_loc2_)
                  {
                     this.§_-Xl§.copyPixels(this.§_-LZ§,this.§_-Cq§,new Point(0,0));
                     addr45:
                  }
               }
               §§goto(addr45);
            }
            return this.§_-Xl§;
         }
         §§goto(addr45);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-ov§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-eM§ = param1;
         }
      }
   }
}
