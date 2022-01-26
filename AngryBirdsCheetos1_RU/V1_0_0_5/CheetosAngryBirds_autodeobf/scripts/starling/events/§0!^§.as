package starling.events
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import §null §.DisplayObject;
   
   public class §0!^§
   {
      
      private static var §>p§:Matrix = new Matrix();
       
      
      private var §<!'§:int;
      
      private var §^_§:Number;
      
      private var §2!#§:Number;
      
      private var §;0§:Number;
      
      private var §?S§:Number;
      
      private var §1!W§:int;
      
      private var §,!2§:String;
      
      private var §?Z§:DisplayObject;
      
      private var §<!B§:Number;
      
      public function §0!^§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§<!'§ = param1;
         this.§^_§ = this.§;0§ = param2;
         this.§2!#§ = this.§?S§ = param3;
         this.§1!W§ = 0;
         this.§,!2§ = param4;
         this.§?Z§ = param5;
      }
      
      public function §!N§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^_§,this.§2!#§);
         this.§?Z§.root.§7!N§(param1,§>p§);
         return §>p§.transformPoint(_loc2_);
      }
      
      public function §8'§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§;0§,this.§?S§);
         this.§?Z§.root.§7!N§(param1,§>p§);
         return §>p§.transformPoint(_loc2_);
      }
      
      public function clone() : §0!^§
      {
         var _loc1_:§0!^§ = new §0!^§(this.§<!'§,this.§^_§,this.§2!#§,this.§,!2§,this.§?Z§);
         _loc1_.§;0§ = this.§;0§;
         _loc1_.§?S§ = this.§?S§;
         _loc1_.§1!W§ = this.§1!W§;
         _loc1_.§<!B§ = this.§<!B§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§<!'§;
      }
      
      public function get globalX() : Number
      {
         return this.§^_§;
      }
      
      public function get globalY() : Number
      {
         return this.§2!#§;
      }
      
      public function get §^!8§() : Number
      {
         return this.§;0§;
      }
      
      public function get §'!@§() : Number
      {
         return this.§?S§;
      }
      
      public function get §6%§() : int
      {
         return this.§1!W§;
      }
      
      public function get phase() : String
      {
         return this.§,!2§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?Z§;
      }
      
      public function get timestamp() : Number
      {
         return this.§<!B§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§;0§ = this.§^_§;
         this.§?S§ = this.§2!#§;
         this.§^_§ = param1;
         this.§2!#§ = param2;
      }
      
      function §?5§(param1:String) : void
      {
         this.§,!2§ = param1;
      }
      
      function §4-§(param1:int) : void
      {
         this.§1!W§ = param1;
      }
      
      function §@F§(param1:DisplayObject) : void
      {
         this.§?Z§ = param1;
      }
      
      function §3_§(param1:Number) : void
      {
         this.§<!B§ = param1;
      }
   }
}
