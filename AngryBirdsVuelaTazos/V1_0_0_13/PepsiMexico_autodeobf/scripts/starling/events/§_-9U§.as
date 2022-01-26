package starling.events
{
   import §_-UX§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-9U§
   {
       
      
      private var §_-Ed§:int;
      
      private var §_-Ov§:Number;
      
      private var §_-Mx§:Number;
      
      private var §_-JS§:Number;
      
      private var §_-h7§:Number;
      
      private var §_-d9§:int;
      
      private var §case §:String;
      
      private var §_-Wh§:DisplayObject;
      
      private var §_-r9§:Number;
      
      public function §_-9U§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-Ed§ = param1;
         this.§_-Ov§ = this.§_-JS§ = param2;
         this.§_-Mx§ = this.§_-h7§ = param3;
         this.§_-d9§ = 0;
         this.§case § = param4;
         this.§_-Wh§ = param5;
      }
      
      public function §_-pf§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-Ov§,this.§_-Mx§);
         var _loc3_:Matrix = this.§_-Wh§.root.§_-Iy§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-Y4§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-JS§,this.§_-h7§);
         var _loc3_:Matrix = this.§_-Wh§.root.§_-Iy§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-9U§
      {
         var _loc1_:§_-9U§ = new §_-9U§(this.§_-Ed§,this.§_-Ov§,this.§_-Mx§,this.§case §,this.§_-Wh§);
         _loc1_.§_-JS§ = this.§_-JS§;
         _loc1_.§_-h7§ = this.§_-h7§;
         _loc1_.§_-d9§ = this.§_-d9§;
         _loc1_.§_-r9§ = this.§_-r9§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-Ed§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-Ov§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-Mx§;
      }
      
      public function get §_-Y8§() : Number
      {
         return this.§_-JS§;
      }
      
      public function get §_-WS§() : Number
      {
         return this.§_-h7§;
      }
      
      public function get §_-Nr§() : int
      {
         return this.§_-d9§;
      }
      
      public function get phase() : String
      {
         return this.§case §;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Wh§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-r9§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-JS§ = this.§_-Ov§;
         this.§_-h7§ = this.§_-Mx§;
         this.§_-Ov§ = param1;
         this.§_-Mx§ = param2;
      }
      
      function §_-BE§(param1:String) : void
      {
         this.§case § = param1;
      }
      
      function §_-YK§(param1:int) : void
      {
         this.§_-d9§ = param1;
      }
      
      function §_-9p§(param1:DisplayObject) : void
      {
         this.§_-Wh§ = param1;
      }
      
      function §_-Bq§(param1:Number) : void
      {
         this.§_-r9§ = param1;
      }
   }
}
