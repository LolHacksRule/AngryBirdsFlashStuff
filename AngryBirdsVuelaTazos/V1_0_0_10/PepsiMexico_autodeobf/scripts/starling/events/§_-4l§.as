package starling.events
{
   import §_-se§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-4l§
   {
       
      
      private var §_-Oo§:int;
      
      private var §_-wi§:Number;
      
      private var §_-ZU§:Number;
      
      private var §_-Bz§:Number;
      
      private var §_-9H§:Number;
      
      private var §_-Oy§:int;
      
      private var §_-3z§:String;
      
      private var §_-11§:DisplayObject;
      
      private var §_-2m§:Number;
      
      public function §_-4l§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-Oo§ = param1;
         this.§_-wi§ = this.§_-Bz§ = param2;
         this.§_-ZU§ = this.§_-9H§ = param3;
         this.§_-Oy§ = 0;
         this.§_-3z§ = param4;
         this.§_-11§ = param5;
      }
      
      public function §_-3k§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-wi§,this.§_-ZU§);
         var _loc3_:Matrix = this.§_-11§.root.§_-h3§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-E9§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-Bz§,this.§_-9H§);
         var _loc3_:Matrix = this.§_-11§.root.§_-h3§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-4l§
      {
         var _loc1_:§_-4l§ = new §_-4l§(this.§_-Oo§,this.§_-wi§,this.§_-ZU§,this.§_-3z§,this.§_-11§);
         _loc1_.§_-Bz§ = this.§_-Bz§;
         _loc1_.§_-9H§ = this.§_-9H§;
         _loc1_.§_-Oy§ = this.§_-Oy§;
         _loc1_.§_-2m§ = this.§_-2m§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-Oo§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-wi§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-ZU§;
      }
      
      public function get §_-C1§() : Number
      {
         return this.§_-Bz§;
      }
      
      public function get §_-jT§() : Number
      {
         return this.§_-9H§;
      }
      
      public function get §_-AH§() : int
      {
         return this.§_-Oy§;
      }
      
      public function get phase() : String
      {
         return this.§_-3z§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-11§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-2m§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-Bz§ = this.§_-wi§;
         this.§_-9H§ = this.§_-ZU§;
         this.§_-wi§ = param1;
         this.§_-ZU§ = param2;
      }
      
      function §_-bC§(param1:String) : void
      {
         this.§_-3z§ = param1;
      }
      
      function §_-da§(param1:int) : void
      {
         this.§_-Oy§ = param1;
      }
      
      function §_-Nw§(param1:DisplayObject) : void
      {
         this.§_-11§ = param1;
      }
      
      function §_-8T§(param1:Number) : void
      {
         this.§_-2m§ = param1;
      }
   }
}
