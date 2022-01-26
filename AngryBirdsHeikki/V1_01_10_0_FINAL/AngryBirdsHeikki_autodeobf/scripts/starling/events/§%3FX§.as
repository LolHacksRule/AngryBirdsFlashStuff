package starling.events
{
   import §2Y§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?X§
   {
      
      private static var §6!<§:Matrix = new Matrix();
       
      
      private var §0!V§:int;
      
      private var §,k§:Number;
      
      private var §%!R§:Number;
      
      private var §@A§:Number;
      
      private var §7!'§:Number;
      
      private var §@2§:int;
      
      private var § t§:String;
      
      private var §'Q§:DisplayObject;
      
      private var §8Z§:Number;
      
      public function §?X§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§0!V§ = param1;
         this.§,k§ = this.§@A§ = param2;
         this.§%!R§ = this.§7!'§ = param3;
         this.§@2§ = 0;
         this.§ t§ = param4;
         this.§'Q§ = param5;
      }
      
      public function §=!A§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§,k§,this.§%!R§);
         this.§'Q§.root.§6!5§(param1,§6!<§);
         return §6!<§.transformPoint(_loc2_);
      }
      
      public function §;Y§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@A§,this.§7!'§);
         this.§'Q§.root.§6!5§(param1,§6!<§);
         return §6!<§.transformPoint(_loc2_);
      }
      
      public function clone() : §?X§
      {
         var _loc1_:§?X§ = new §?X§(this.§0!V§,this.§,k§,this.§%!R§,this.§ t§,this.§'Q§);
         _loc1_.§@A§ = this.§@A§;
         _loc1_.§7!'§ = this.§7!'§;
         _loc1_.§@2§ = this.§@2§;
         _loc1_.§8Z§ = this.§8Z§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§0!V§;
      }
      
      public function get globalX() : Number
      {
         return this.§,k§;
      }
      
      public function get globalY() : Number
      {
         return this.§%!R§;
      }
      
      public function get §#9§() : Number
      {
         return this.§@A§;
      }
      
      public function get §]!J§() : Number
      {
         return this.§7!'§;
      }
      
      public function get §#X§() : int
      {
         return this.§@2§;
      }
      
      public function get phase() : String
      {
         return this.§ t§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§'Q§;
      }
      
      public function get timestamp() : Number
      {
         return this.§8Z§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§@A§ = this.§,k§;
         this.§7!'§ = this.§%!R§;
         this.§,k§ = param1;
         this.§%!R§ = param2;
      }
      
      function §3!1§(param1:String) : void
      {
         this.§ t§ = param1;
      }
      
      function §!!Y§(param1:int) : void
      {
         this.§@2§ = param1;
      }
      
      function §&z§(param1:DisplayObject) : void
      {
         this.§'Q§ = param1;
      }
      
      function §^!C§(param1:Number) : void
      {
         this.§8Z§ = param1;
      }
   }
}
