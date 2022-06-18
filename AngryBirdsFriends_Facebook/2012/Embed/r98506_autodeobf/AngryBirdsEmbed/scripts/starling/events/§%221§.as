package starling.events
{
   import §;q§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §"1§
   {
      
      private static var §?!3§:Matrix = new Matrix();
       
      
      private var §-!C§:int;
      
      private var §%!A§:Number;
      
      private var §+r§:Number;
      
      private var §`!%§:Number;
      
      private var §4!,§:Number;
      
      private var §;!$§:int;
      
      private var §^!J§:String;
      
      private var § N§:DisplayObject;
      
      private var §4v§:Number;
      
      public function §"1§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§-!C§ = param1;
         this.§%!A§ = this.§`!%§ = param2;
         this.§+r§ = this.§4!,§ = param3;
         this.§;!$§ = 0;
         this.§^!J§ = param4;
         this.§ N§ = param5;
      }
      
      public function §=7§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%!A§,this.§+r§);
         this.§ N§.root.§&Z§(param1,§?!3§);
         return §?!3§.transformPoint(_loc2_);
      }
      
      public function §5n§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`!%§,this.§4!,§);
         this.§ N§.root.§&Z§(param1,§?!3§);
         return §?!3§.transformPoint(_loc2_);
      }
      
      public function clone() : §"1§
      {
         var _loc1_:§"1§ = new §"1§(this.§-!C§,this.§%!A§,this.§+r§,this.§^!J§,this.§ N§);
         _loc1_.§`!%§ = this.§`!%§;
         _loc1_.§4!,§ = this.§4!,§;
         _loc1_.§;!$§ = this.§;!$§;
         _loc1_.§4v§ = this.§4v§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§-!C§;
      }
      
      public function get globalX() : Number
      {
         return this.§%!A§;
      }
      
      public function get globalY() : Number
      {
         return this.§+r§;
      }
      
      public function get §>a§() : Number
      {
         return this.§`!%§;
      }
      
      public function get §'s§() : Number
      {
         return this.§4!,§;
      }
      
      public function get §-!?§() : int
      {
         return this.§;!$§;
      }
      
      public function get phase() : String
      {
         return this.§^!J§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§ N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§4v§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§`!%§ = this.§%!A§;
         this.§4!,§ = this.§+r§;
         this.§%!A§ = param1;
         this.§+r§ = param2;
      }
      
      function §^!,§(param1:String) : void
      {
         this.§^!J§ = param1;
      }
      
      function §@"§(param1:int) : void
      {
         this.§;!$§ = param1;
      }
      
      function §<a§(param1:DisplayObject) : void
      {
         this.§ N§ = param1;
      }
      
      function §??§(param1:Number) : void
      {
         this.§4v§ = param1;
      }
   }
}
