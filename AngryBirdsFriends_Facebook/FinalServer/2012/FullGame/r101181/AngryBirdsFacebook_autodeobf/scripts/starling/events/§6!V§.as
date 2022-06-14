package starling.events
{
   import §1!$§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6!V§
   {
      
      private static var §@V§:Matrix = new Matrix();
       
      
      private var §];§:int;
      
      private var §8!s§:Number;
      
      private var §;"5§:Number;
      
      private var §]! §:Number;
      
      private var §?!j§:Number;
      
      private var §5L§:int;
      
      private var §?!7§:String;
      
      private var § !8§:DisplayObject;
      
      private var §=!o§:Number;
      
      public function §6!V§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§];§ = param1;
         this.§8!s§ = this.§]! § = param2;
         this.§;"5§ = this.§?!j§ = param3;
         this.§5L§ = 0;
         this.§?!7§ = param4;
         this.§ !8§ = param5;
      }
      
      public function §=!r§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8!s§,this.§;"5§);
         this.§ !8§.root.§&!e§(param1,§@V§);
         return §@V§.transformPoint(_loc2_);
      }
      
      public function §["C§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§]! §,this.§?!j§);
         this.§ !8§.root.§&!e§(param1,§@V§);
         return §@V§.transformPoint(_loc2_);
      }
      
      public function clone() : §6!V§
      {
         var _loc1_:§6!V§ = new §6!V§(this.§];§,this.§8!s§,this.§;"5§,this.§?!7§,this.§ !8§);
         _loc1_.§]! § = this.§]! §;
         _loc1_.§?!j§ = this.§?!j§;
         _loc1_.§5L§ = this.§5L§;
         _loc1_.§=!o§ = this.§=!o§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§];§;
      }
      
      public function get globalX() : Number
      {
         return this.§8!s§;
      }
      
      public function get globalY() : Number
      {
         return this.§;"5§;
      }
      
      public function get §6h§() : Number
      {
         return this.§]! §;
      }
      
      public function get §"a§() : Number
      {
         return this.§?!j§;
      }
      
      public function get §!P§() : int
      {
         return this.§5L§;
      }
      
      public function get phase() : String
      {
         return this.§?!7§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§ !8§;
      }
      
      public function get timestamp() : Number
      {
         return this.§=!o§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§]! § = this.§8!s§;
         this.§?!j§ = this.§;"5§;
         this.§8!s§ = param1;
         this.§;"5§ = param2;
      }
      
      function §>!I§(param1:String) : void
      {
         this.§?!7§ = param1;
      }
      
      function §>;§(param1:int) : void
      {
         this.§5L§ = param1;
      }
      
      function §;"#§(param1:DisplayObject) : void
      {
         this.§ !8§ = param1;
      }
      
      function §'Z§(param1:Number) : void
      {
         this.§=!o§ = param1;
      }
   }
}
