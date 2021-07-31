package starling.events
{
   import §&o§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7+§
   {
      
      private static var §2$§:Matrix = new Matrix();
       
      
      private var §9!-§:int;
      
      private var §do §:Number;
      
      private var §9u§:Number;
      
      private var §7s§:Number;
      
      private var §95§:Number;
      
      private var §#5§:int;
      
      private var §%c§:String;
      
      private var §@N§:DisplayObject;
      
      private var §[!L§:Number;
      
      public function §7+§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§9!-§ = param1;
         this.§do § = this.§7s§ = param2;
         this.§9u§ = this.§95§ = param3;
         this.§#5§ = 0;
         this.§%c§ = param4;
         this.§@N§ = param5;
      }
      
      public function §[h§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§do §,this.§9u§);
         this.§@N§.root.§&M§(param1,§2$§);
         return §2$§.transformPoint(_loc2_);
      }
      
      public function §>!&§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§7s§,this.§95§);
         this.§@N§.root.§&M§(param1,§2$§);
         return §2$§.transformPoint(_loc2_);
      }
      
      public function clone() : §7+§
      {
         var _loc1_:§7+§ = new §7+§(this.§9!-§,this.§do §,this.§9u§,this.§%c§,this.§@N§);
         _loc1_.§7s§ = this.§7s§;
         _loc1_.§95§ = this.§95§;
         _loc1_.§#5§ = this.§#5§;
         _loc1_.§[!L§ = this.§[!L§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§9!-§;
      }
      
      public function get globalX() : Number
      {
         return this.§do §;
      }
      
      public function get globalY() : Number
      {
         return this.§9u§;
      }
      
      public function get §;M§() : Number
      {
         return this.§7s§;
      }
      
      public function get §7M§() : Number
      {
         return this.§95§;
      }
      
      public function get §?[§() : int
      {
         return this.§#5§;
      }
      
      public function get phase() : String
      {
         return this.§%c§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§@N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§[!L§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§7s§ = this.§do §;
         this.§95§ = this.§9u§;
         this.§do § = param1;
         this.§9u§ = param2;
      }
      
      function §-!A§(param1:String) : void
      {
         this.§%c§ = param1;
      }
      
      function §]!4§(param1:int) : void
      {
         this.§#5§ = param1;
      }
      
      function §'^§(param1:DisplayObject) : void
      {
         this.§@N§ = param1;
      }
      
      function §2y§(param1:Number) : void
      {
         this.§[!L§ = param1;
      }
   }
}
