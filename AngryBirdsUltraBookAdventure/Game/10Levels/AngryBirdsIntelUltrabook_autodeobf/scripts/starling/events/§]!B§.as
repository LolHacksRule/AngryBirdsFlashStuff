package starling.events
{
   import §#!,§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]!B§
   {
      
      private static var §]!C§:Matrix = new Matrix();
       
      
      private var §?t§:int;
      
      private var §6Y§:Number;
      
      private var §;§:Number;
      
      private var §'B§:Number;
      
      private var §5!,§:Number;
      
      private var § s§:int;
      
      private var §<!5§:String;
      
      private var §7@§:DisplayObject;
      
      private var §[i§:Number;
      
      public function §]!B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?t§ = param1;
         this.§6Y§ = this.§'B§ = param2;
         this.§;§ = this.§5!,§ = param3;
         this.§ s§ = 0;
         this.§<!5§ = param4;
         this.§7@§ = param5;
      }
      
      public function §9!&§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6Y§,this.§;§);
         this.§7@§.root.§@!7§(param1,§]!C§);
         return §]!C§.transformPoint(_loc2_);
      }
      
      public function §%a§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§'B§,this.§5!,§);
         this.§7@§.root.§@!7§(param1,§]!C§);
         return §]!C§.transformPoint(_loc2_);
      }
      
      public function clone() : §]!B§
      {
         var _loc1_:§]!B§ = new §]!B§(this.§?t§,this.§6Y§,this.§;§,this.§<!5§,this.§7@§);
         _loc1_.§'B§ = this.§'B§;
         _loc1_.§5!,§ = this.§5!,§;
         _loc1_.§ s§ = this.§ s§;
         _loc1_.§[i§ = this.§[i§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?t§;
      }
      
      public function get globalX() : Number
      {
         return this.§6Y§;
      }
      
      public function get globalY() : Number
      {
         return this.§;§;
      }
      
      public function get §;`§() : Number
      {
         return this.§'B§;
      }
      
      public function get §#!i§() : Number
      {
         return this.§5!,§;
      }
      
      public function get §8!C§() : int
      {
         return this.§ s§;
      }
      
      public function get phase() : String
      {
         return this.§<!5§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§7@§;
      }
      
      public function get timestamp() : Number
      {
         return this.§[i§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§'B§ = this.§6Y§;
         this.§5!,§ = this.§;§;
         this.§6Y§ = param1;
         this.§;§ = param2;
      }
      
      function §9!$§(param1:String) : void
      {
         this.§<!5§ = param1;
      }
      
      function §!!f§(param1:int) : void
      {
         this.§ s§ = param1;
      }
      
      function §#s§(param1:DisplayObject) : void
      {
         this.§7@§ = param1;
      }
      
      function §0]§(param1:Number) : void
      {
         this.§[i§ = param1;
      }
   }
}
