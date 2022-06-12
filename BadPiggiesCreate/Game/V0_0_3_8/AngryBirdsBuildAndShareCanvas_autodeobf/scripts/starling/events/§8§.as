package starling.events
{
   import §]!2§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §8§
   {
      
      private static var §"j§:Matrix = new Matrix();
       
      
      private var § ^§:int;
      
      private var §9V§:Number;
      
      private var §3O§:Number;
      
      private var §;!o§:Number;
      
      private var §^!u§:Number;
      
      private var §0D§:int;
      
      private var §^V§:String;
      
      private var §^!X§:DisplayObject;
      
      private var §#,§:Number;
      
      public function §8§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§ ^§ = param1;
         this.§9V§ = this.§;!o§ = param2;
         this.§3O§ = this.§^!u§ = param3;
         this.§0D§ = 0;
         this.§^V§ = param4;
         this.§^!X§ = param5;
      }
      
      public function §^!b§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§9V§,this.§3O§);
         this.§^!X§.root.§'!b§(param1,§"j§);
         return §"j§.transformPoint(_loc2_);
      }
      
      public function §!!M§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§;!o§,this.§^!u§);
         this.§^!X§.root.§'!b§(param1,§"j§);
         return §"j§.transformPoint(_loc2_);
      }
      
      public function clone() : §8§
      {
         var _loc1_:§8§ = new §8§(this.§ ^§,this.§9V§,this.§3O§,this.§^V§,this.§^!X§);
         _loc1_.§;!o§ = this.§;!o§;
         _loc1_.§^!u§ = this.§^!u§;
         _loc1_.§0D§ = this.§0D§;
         _loc1_.§#,§ = this.§#,§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§ ^§;
      }
      
      public function get globalX() : Number
      {
         return this.§9V§;
      }
      
      public function get globalY() : Number
      {
         return this.§3O§;
      }
      
      public function get §#F§() : Number
      {
         return this.§;!o§;
      }
      
      public function get §#!J§() : Number
      {
         return this.§^!u§;
      }
      
      public function get §+!]§() : int
      {
         return this.§0D§;
      }
      
      public function get phase() : String
      {
         return this.§^V§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§^!X§;
      }
      
      public function get timestamp() : Number
      {
         return this.§#,§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§;!o§ = this.§9V§;
         this.§^!u§ = this.§3O§;
         this.§9V§ = param1;
         this.§3O§ = param2;
      }
      
      function §&%§(param1:String) : void
      {
         this.§^V§ = param1;
      }
      
      function §5"1§(param1:int) : void
      {
         this.§0D§ = param1;
      }
      
      function §[!'§(param1:DisplayObject) : void
      {
         this.§^!X§ = param1;
      }
      
      function §-""§(param1:Number) : void
      {
         this.§#,§ = param1;
      }
   }
}
