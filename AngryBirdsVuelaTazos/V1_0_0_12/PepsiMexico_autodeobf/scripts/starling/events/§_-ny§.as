package starling.events
{
   import §_-pF§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-ny§
   {
       
      
      private var §_-Ar§:int;
      
      private var §_-Kr§:Number;
      
      private var §_-g8§:Number;
      
      private var §_-do§:Number;
      
      private var §_-Qt§:Number;
      
      private var §_-5F§:int;
      
      private var §_-hx§:String;
      
      private var §_-Kv§:DisplayObject;
      
      private var §_-Lg§:Number;
      
      public function §_-ny§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-Ar§ = param1;
         this.§_-Kr§ = this.§_-do§ = param2;
         this.§_-g8§ = this.§_-Qt§ = param3;
         this.§_-5F§ = 0;
         this.§_-hx§ = param4;
         this.§_-Kv§ = param5;
      }
      
      public function §_-We§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-Kr§,this.§_-g8§);
         var _loc3_:Matrix = this.§_-Kv§.root.§_-4e§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-4H§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-do§,this.§_-Qt§);
         var _loc3_:Matrix = this.§_-Kv§.root.§_-4e§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-ny§
      {
         var _loc1_:§_-ny§ = new §_-ny§(this.§_-Ar§,this.§_-Kr§,this.§_-g8§,this.§_-hx§,this.§_-Kv§);
         _loc1_.§_-do§ = this.§_-do§;
         _loc1_.§_-Qt§ = this.§_-Qt§;
         _loc1_.§_-5F§ = this.§_-5F§;
         _loc1_.§_-Lg§ = this.§_-Lg§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-Ar§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-Kr§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-g8§;
      }
      
      public function get §_-uY§() : Number
      {
         return this.§_-do§;
      }
      
      public function get §_-4k§() : Number
      {
         return this.§_-Qt§;
      }
      
      public function get §_-S5§() : int
      {
         return this.§_-5F§;
      }
      
      public function get phase() : String
      {
         return this.§_-hx§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Kv§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-Lg§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-do§ = this.§_-Kr§;
         this.§_-Qt§ = this.§_-g8§;
         this.§_-Kr§ = param1;
         this.§_-g8§ = param2;
      }
      
      function §_-4§(param1:String) : void
      {
         this.§_-hx§ = param1;
      }
      
      function §_-LU§(param1:int) : void
      {
         this.§_-5F§ = param1;
      }
      
      function §_-nd§(param1:DisplayObject) : void
      {
         this.§_-Kv§ = param1;
      }
      
      function §_-wf§(param1:Number) : void
      {
         this.§_-Lg§ = param1;
      }
   }
}
