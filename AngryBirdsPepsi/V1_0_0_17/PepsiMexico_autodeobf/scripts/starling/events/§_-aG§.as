package starling.events
{
   import §_-LP§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-aG§
   {
       
      
      private var §_-dZ§:int;
      
      private var §_-l2§:Number;
      
      private var §_-t-§:Number;
      
      private var §_-n6§:Number;
      
      private var §_-36§:Number;
      
      private var §_-Iu§:int;
      
      private var §_-kH§:String;
      
      private var §_-Cc§:DisplayObject;
      
      private var §_-XQ§:Number;
      
      public function §_-aG§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-dZ§ = param1;
         this.§_-l2§ = this.§_-n6§ = param2;
         this.§_-t-§ = this.§_-36§ = param3;
         this.§_-Iu§ = 0;
         this.§_-kH§ = param4;
         this.§_-Cc§ = param5;
      }
      
      public function §_-Wh§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-l2§,this.§_-t-§);
         var _loc3_:Matrix = this.§_-Cc§.root.§_-OX§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-h-§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-n6§,this.§_-36§);
         var _loc3_:Matrix = this.§_-Cc§.root.§_-OX§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-aG§
      {
         var _loc1_:§_-aG§ = new §_-aG§(this.§_-dZ§,this.§_-l2§,this.§_-t-§,this.§_-kH§,this.§_-Cc§);
         _loc1_.§_-n6§ = this.§_-n6§;
         _loc1_.§_-36§ = this.§_-36§;
         _loc1_.§_-Iu§ = this.§_-Iu§;
         _loc1_.§_-XQ§ = this.§_-XQ§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-dZ§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-l2§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-t-§;
      }
      
      public function get §_-8M§() : Number
      {
         return this.§_-n6§;
      }
      
      public function get §_-rA§() : Number
      {
         return this.§_-36§;
      }
      
      public function get §_-Y7§() : int
      {
         return this.§_-Iu§;
      }
      
      public function get phase() : String
      {
         return this.§_-kH§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Cc§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-XQ§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-n6§ = this.§_-l2§;
         this.§_-36§ = this.§_-t-§;
         this.§_-l2§ = param1;
         this.§_-t-§ = param2;
      }
      
      function §_-RP§(param1:String) : void
      {
         this.§_-kH§ = param1;
      }
      
      function §_-xv§(param1:int) : void
      {
         this.§_-Iu§ = param1;
      }
      
      function §_-Lb§(param1:DisplayObject) : void
      {
         this.§_-Cc§ = param1;
      }
      
      function §_-vL§(param1:Number) : void
      {
         this.§_-XQ§ = param1;
      }
   }
}
