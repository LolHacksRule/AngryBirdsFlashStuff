package starling.events
{
   import §0@§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §^!$§
   {
      
      private static var §8!f§:Matrix = new Matrix();
       
      
      private var §!!Z§:int;
      
      private var §<i§:Number;
      
      private var §[!$§:Number;
      
      private var §4G§:Number;
      
      private var §,]§:Number;
      
      private var §">§:int;
      
      private var §1!b§:String;
      
      private var §]A§:DisplayObject;
      
      private var §&!`§:Number;
      
      public function §^!$§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§!!Z§ = param1;
         this.§<i§ = this.§4G§ = param2;
         this.§[!$§ = this.§,]§ = param3;
         this.§">§ = 0;
         this.§1!b§ = param4;
         this.§]A§ = param5;
      }
      
      public function §26§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§<i§,this.§[!$§);
         this.§]A§.root.§3!6§(param1,§8!f§);
         return §8!f§.transformPoint(_loc2_);
      }
      
      public function §8!F§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§4G§,this.§,]§);
         this.§]A§.root.§3!6§(param1,§8!f§);
         return §8!f§.transformPoint(_loc2_);
      }
      
      public function clone() : §^!$§
      {
         var _loc1_:§^!$§ = new §^!$§(this.§!!Z§,this.§<i§,this.§[!$§,this.§1!b§,this.§]A§);
         _loc1_.§4G§ = this.§4G§;
         _loc1_.§,]§ = this.§,]§;
         _loc1_.§">§ = this.§">§;
         _loc1_.§&!`§ = this.§&!`§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§!!Z§;
      }
      
      public function get globalX() : Number
      {
         return this.§<i§;
      }
      
      public function get globalY() : Number
      {
         return this.§[!$§;
      }
      
      public function get §0!a§() : Number
      {
         return this.§4G§;
      }
      
      public function get §4!&§() : Number
      {
         return this.§,]§;
      }
      
      public function get §^!#§() : int
      {
         return this.§">§;
      }
      
      public function get phase() : String
      {
         return this.§1!b§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§]A§;
      }
      
      public function get timestamp() : Number
      {
         return this.§&!`§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§4G§ = this.§<i§;
         this.§,]§ = this.§[!$§;
         this.§<i§ = param1;
         this.§[!$§ = param2;
      }
      
      function § !;§(param1:String) : void
      {
         this.§1!b§ = param1;
      }
      
      function §2N§(param1:int) : void
      {
         this.§">§ = param1;
      }
      
      function §%]§(param1:DisplayObject) : void
      {
         this.§]A§ = param1;
      }
      
      function §=!l§(param1:Number) : void
      {
         this.§&!`§ = param1;
      }
   }
}
