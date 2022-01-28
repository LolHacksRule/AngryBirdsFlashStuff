package starling.events
{
   import §_-SE§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-m0§
   {
       
      
      private var §_-MY§:int;
      
      private var §_-yo§:Number;
      
      private var §_-AL§:Number;
      
      private var §_-2M§:Number;
      
      private var §_-sF§:Number;
      
      private var §_-kb§:int;
      
      private var §_-J-§:String;
      
      private var §_-d8§:DisplayObject;
      
      private var §_-Rs§:Number;
      
      public function §_-m0§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-MY§ = param1;
         this.§_-yo§ = this.§_-2M§ = param2;
         this.§_-AL§ = this.§_-sF§ = param3;
         this.§_-kb§ = 0;
         this.§_-J-§ = param4;
         this.§_-d8§ = param5;
      }
      
      public function §_-vM§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-yo§,this.§_-AL§);
         var _loc3_:Matrix = this.§_-d8§.root.§_-Bv§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-O-§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-2M§,this.§_-sF§);
         var _loc3_:Matrix = this.§_-d8§.root.§_-Bv§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-m0§
      {
         var _loc1_:§_-m0§ = new §_-m0§(this.§_-MY§,this.§_-yo§,this.§_-AL§,this.§_-J-§,this.§_-d8§);
         _loc1_.§_-2M§ = this.§_-2M§;
         _loc1_.§_-sF§ = this.§_-sF§;
         _loc1_.§_-kb§ = this.§_-kb§;
         _loc1_.§_-Rs§ = this.§_-Rs§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-MY§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-yo§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-AL§;
      }
      
      public function get §_-nW§() : Number
      {
         return this.§_-2M§;
      }
      
      public function get §_-t5§() : Number
      {
         return this.§_-sF§;
      }
      
      public function get §_-8i§() : int
      {
         return this.§_-kb§;
      }
      
      public function get phase() : String
      {
         return this.§_-J-§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-d8§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-Rs§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-2M§ = this.§_-yo§;
         this.§_-sF§ = this.§_-AL§;
         this.§_-yo§ = param1;
         this.§_-AL§ = param2;
      }
      
      function §_-z0§(param1:String) : void
      {
         this.§_-J-§ = param1;
      }
      
      function §_-1u§(param1:int) : void
      {
         this.§_-kb§ = param1;
      }
      
      function §_-fA§(param1:DisplayObject) : void
      {
         this.§_-d8§ = param1;
      }
      
      function §_-S6§(param1:Number) : void
      {
         this.§_-Rs§ = param1;
      }
   }
}
