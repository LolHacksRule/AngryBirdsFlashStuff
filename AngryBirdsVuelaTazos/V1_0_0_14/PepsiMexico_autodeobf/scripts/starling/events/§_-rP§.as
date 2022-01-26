package starling.events
{
   import §_-b5§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-rP§
   {
       
      
      private var §_-pt§:int;
      
      private var §_-di§:Number;
      
      private var §_-3D§:Number;
      
      private var §_-Ec§:Number;
      
      private var §_-w5§:Number;
      
      private var §_-cT§:int;
      
      private var §_-Kg§:String;
      
      private var §_-0V§:DisplayObject;
      
      private var §_-5V§:Number;
      
      public function §_-rP§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-pt§ = param1;
         this.§_-di§ = this.§_-Ec§ = param2;
         this.§_-3D§ = this.§_-w5§ = param3;
         this.§_-cT§ = 0;
         this.§_-Kg§ = param4;
         this.§_-0V§ = param5;
      }
      
      public function §_-C8§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-di§,this.§_-3D§);
         var _loc3_:Matrix = this.§_-0V§.root.§_-C4§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-cj§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-Ec§,this.§_-w5§);
         var _loc3_:Matrix = this.§_-0V§.root.§_-C4§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-rP§
      {
         var _loc1_:§_-rP§ = new §_-rP§(this.§_-pt§,this.§_-di§,this.§_-3D§,this.§_-Kg§,this.§_-0V§);
         _loc1_.§_-Ec§ = this.§_-Ec§;
         _loc1_.§_-w5§ = this.§_-w5§;
         _loc1_.§_-cT§ = this.§_-cT§;
         _loc1_.§_-5V§ = this.§_-5V§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-pt§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-di§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-3D§;
      }
      
      public function get §_-CO§() : Number
      {
         return this.§_-Ec§;
      }
      
      public function get §_-YA§() : Number
      {
         return this.§_-w5§;
      }
      
      public function get §_-1a§() : int
      {
         return this.§_-cT§;
      }
      
      public function get phase() : String
      {
         return this.§_-Kg§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-0V§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-5V§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-Ec§ = this.§_-di§;
         this.§_-w5§ = this.§_-3D§;
         this.§_-di§ = param1;
         this.§_-3D§ = param2;
      }
      
      function §_-7d§(param1:String) : void
      {
         this.§_-Kg§ = param1;
      }
      
      function §_-1K§(param1:int) : void
      {
         this.§_-cT§ = param1;
      }
      
      function §_-TI§(param1:DisplayObject) : void
      {
         this.§_-0V§ = param1;
      }
      
      function §_-OK§(param1:Number) : void
      {
         this.§_-5V§ = param1;
      }
   }
}
