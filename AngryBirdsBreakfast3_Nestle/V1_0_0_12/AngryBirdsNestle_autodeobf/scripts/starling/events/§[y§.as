package starling.events
{
   import §`!B§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[y§
   {
      
      private static var §9!b§:Matrix = new Matrix();
       
      
      private var §1!U§:int;
      
      private var §-T§:Number;
      
      private var §"X§:Number;
      
      private var §8!'§:Number;
      
      private var §2g§:Number;
      
      private var §36§:int;
      
      private var §%!g§:String;
      
      private var §'X§:DisplayObject;
      
      private var §9!L§:Number;
      
      public function §[y§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§1!U§ = param1;
         this.§-T§ = this.§8!'§ = param2;
         this.§"X§ = this.§2g§ = param3;
         this.§36§ = 0;
         this.§%!g§ = param4;
         this.§'X§ = param5;
      }
      
      public function §?!A§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§-T§,this.§"X§);
         this.§'X§.root.§6"7§(param1,§9!b§);
         return §9!b§.transformPoint(_loc2_);
      }
      
      public function §,F§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8!'§,this.§2g§);
         this.§'X§.root.§6"7§(param1,§9!b§);
         return §9!b§.transformPoint(_loc2_);
      }
      
      public function clone() : §[y§
      {
         var _loc1_:§[y§ = new §[y§(this.§1!U§,this.§-T§,this.§"X§,this.§%!g§,this.§'X§);
         _loc1_.§8!'§ = this.§8!'§;
         _loc1_.§2g§ = this.§2g§;
         _loc1_.§36§ = this.§36§;
         _loc1_.§9!L§ = this.§9!L§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§1!U§;
      }
      
      public function get globalX() : Number
      {
         return this.§-T§;
      }
      
      public function get globalY() : Number
      {
         return this.§"X§;
      }
      
      public function get §=B§() : Number
      {
         return this.§8!'§;
      }
      
      public function get §0s§() : Number
      {
         return this.§2g§;
      }
      
      public function get §""%§() : int
      {
         return this.§36§;
      }
      
      public function get phase() : String
      {
         return this.§%!g§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§'X§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9!L§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§8!'§ = this.§-T§;
         this.§2g§ = this.§"X§;
         this.§-T§ = param1;
         this.§"X§ = param2;
      }
      
      function §^"-§(param1:String) : void
      {
         this.§%!g§ = param1;
      }
      
      function §!o§(param1:int) : void
      {
         this.§36§ = param1;
      }
      
      function §#2§(param1:DisplayObject) : void
      {
         this.§'X§ = param1;
      }
      
      function §0!8§(param1:Number) : void
      {
         this.§9!L§ = param1;
      }
   }
}
