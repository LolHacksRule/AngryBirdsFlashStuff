package starling.events
{
   import §1!Y§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?!!§
   {
      
      private static var §<"#§:Matrix = new Matrix();
       
      
      private var §4"3§:int;
      
      private var §]!e§:Number;
      
      private var §^d§:Number;
      
      private var §6z§:Number;
      
      private var §>!1§:Number;
      
      private var §^!z§:int;
      
      private var §1!'§:String;
      
      private var §&!A§:DisplayObject;
      
      private var § null§:Number;
      
      public function §?!!§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§4"3§ = param1;
         this.§]!e§ = this.§6z§ = param2;
         this.§^d§ = this.§>!1§ = param3;
         this.§^!z§ = 0;
         this.§1!'§ = param4;
         this.§&!A§ = param5;
      }
      
      public function §44§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§]!e§,this.§^d§);
         this.§&!A§.root.§2![§(param1,§<"#§);
         return §<"#§.transformPoint(_loc2_);
      }
      
      public function §>4§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6z§,this.§>!1§);
         this.§&!A§.root.§2![§(param1,§<"#§);
         return §<"#§.transformPoint(_loc2_);
      }
      
      public function clone() : §?!!§
      {
         var _loc1_:§?!!§ = new §?!!§(this.§4"3§,this.§]!e§,this.§^d§,this.§1!'§,this.§&!A§);
         _loc1_.§6z§ = this.§6z§;
         _loc1_.§>!1§ = this.§>!1§;
         _loc1_.§^!z§ = this.§^!z§;
         _loc1_.§ null§ = this.§ null§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§4"3§;
      }
      
      public function get globalX() : Number
      {
         return this.§]!e§;
      }
      
      public function get globalY() : Number
      {
         return this.§^d§;
      }
      
      public function get §1b§() : Number
      {
         return this.§6z§;
      }
      
      public function get §?%§() : Number
      {
         return this.§>!1§;
      }
      
      public function get §'!F§() : int
      {
         return this.§^!z§;
      }
      
      public function get phase() : String
      {
         return this.§1!'§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&!A§;
      }
      
      public function get timestamp() : Number
      {
         return this.§ null§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§6z§ = this.§]!e§;
         this.§>!1§ = this.§^d§;
         this.§]!e§ = param1;
         this.§^d§ = param2;
      }
      
      function §&B§(param1:String) : void
      {
         this.§1!'§ = param1;
      }
      
      function §6q§(param1:int) : void
      {
         this.§^!z§ = param1;
      }
      
      function §;!_§(param1:DisplayObject) : void
      {
         this.§&!A§ = param1;
      }
      
      function §=?§(param1:Number) : void
      {
         this.§ null§ = param1;
      }
   }
}
