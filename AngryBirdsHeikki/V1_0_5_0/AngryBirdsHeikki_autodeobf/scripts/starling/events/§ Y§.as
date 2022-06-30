package starling.events
{
   import §[=§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § Y§
   {
      
      private static var §]!D§:Matrix = new Matrix();
       
      
      private var §@q§:int;
      
      private var §catch§:Number;
      
      private var §7[§:Number;
      
      private var §;!B§:Number;
      
      private var §5!G§:Number;
      
      private var §"[§:int;
      
      private var §![§:String;
      
      private var §;J§:DisplayObject;
      
      private var §@M§:Number;
      
      public function § Y§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§@q§ = param1;
         this.§catch§ = this.§;!B§ = param2;
         this.§7[§ = this.§5!G§ = param3;
         this.§"[§ = 0;
         this.§![§ = param4;
         this.§;J§ = param5;
      }
      
      public function §0F§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§catch§,this.§7[§);
         this.§;J§.root.§5y§(param1,§]!D§);
         return §]!D§.transformPoint(_loc2_);
      }
      
      public function §5!8§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§;!B§,this.§5!G§);
         this.§;J§.root.§5y§(param1,§]!D§);
         return §]!D§.transformPoint(_loc2_);
      }
      
      public function clone() : § Y§
      {
         var _loc1_:§ Y§ = new § Y§(this.§@q§,this.§catch§,this.§7[§,this.§![§,this.§;J§);
         _loc1_.§;!B§ = this.§;!B§;
         _loc1_.§5!G§ = this.§5!G§;
         _loc1_.§"[§ = this.§"[§;
         _loc1_.§@M§ = this.§@M§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§@q§;
      }
      
      public function get globalX() : Number
      {
         return this.§catch§;
      }
      
      public function get globalY() : Number
      {
         return this.§7[§;
      }
      
      public function get §8L§() : Number
      {
         return this.§;!B§;
      }
      
      public function get §7^§() : Number
      {
         return this.§5!G§;
      }
      
      public function get §5e§() : int
      {
         return this.§"[§;
      }
      
      public function get phase() : String
      {
         return this.§![§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§;J§;
      }
      
      public function get timestamp() : Number
      {
         return this.§@M§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§;!B§ = this.§catch§;
         this.§5!G§ = this.§7[§;
         this.§catch§ = param1;
         this.§7[§ = param2;
      }
      
      function §#!M§(param1:String) : void
      {
         this.§![§ = param1;
      }
      
      function §<a§(param1:int) : void
      {
         this.§"[§ = param1;
      }
      
      function §^!M§(param1:DisplayObject) : void
      {
         this.§;J§ = param1;
      }
      
      function §]!K§(param1:Number) : void
      {
         this.§@M§ = param1;
      }
   }
}
