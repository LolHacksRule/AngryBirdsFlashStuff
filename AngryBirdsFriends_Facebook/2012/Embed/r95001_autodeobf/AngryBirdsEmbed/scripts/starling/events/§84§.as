package starling.events
{
   import §<k§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §84§
   {
      
      private static var §;+§:Matrix = new Matrix();
       
      
      private var §;A§:int;
      
      private var §"#§:Number;
      
      private var §,E§:Number;
      
      private var §3!#§:Number;
      
      private var §;!6§:Number;
      
      private var §9[§:int;
      
      private var §^3§:String;
      
      private var §+v§:DisplayObject;
      
      private var §%<§:Number;
      
      public function §84§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§;A§ = param1;
         this.§"#§ = this.§3!#§ = param2;
         this.§,E§ = this.§;!6§ = param3;
         this.§9[§ = 0;
         this.§^3§ = param4;
         this.§+v§ = param5;
      }
      
      public function §?!6§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"#§,this.§,E§);
         this.§+v§.root.§!!?§(param1,§;+§);
         return §;+§.transformPoint(_loc2_);
      }
      
      public function §,Z§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§3!#§,this.§;!6§);
         this.§+v§.root.§!!?§(param1,§;+§);
         return §;+§.transformPoint(_loc2_);
      }
      
      public function clone() : §84§
      {
         var _loc1_:§84§ = new §84§(this.§;A§,this.§"#§,this.§,E§,this.§^3§,this.§+v§);
         _loc1_.§3!#§ = this.§3!#§;
         _loc1_.§;!6§ = this.§;!6§;
         _loc1_.§9[§ = this.§9[§;
         _loc1_.§%<§ = this.§%<§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§;A§;
      }
      
      public function get globalX() : Number
      {
         return this.§"#§;
      }
      
      public function get globalY() : Number
      {
         return this.§,E§;
      }
      
      public function get §=j§() : Number
      {
         return this.§3!#§;
      }
      
      public function get §7!A§() : Number
      {
         return this.§;!6§;
      }
      
      public function get §0a§() : int
      {
         return this.§9[§;
      }
      
      public function get phase() : String
      {
         return this.§^3§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+v§;
      }
      
      public function get timestamp() : Number
      {
         return this.§%<§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§3!#§ = this.§"#§;
         this.§;!6§ = this.§,E§;
         this.§"#§ = param1;
         this.§,E§ = param2;
      }
      
      function §]'§(param1:String) : void
      {
         this.§^3§ = param1;
      }
      
      function §"!4§(param1:int) : void
      {
         this.§9[§ = param1;
      }
      
      function §2n§(param1:DisplayObject) : void
      {
         this.§+v§ = param1;
      }
      
      function §%z§(param1:Number) : void
      {
         this.§%<§ = param1;
      }
   }
}
