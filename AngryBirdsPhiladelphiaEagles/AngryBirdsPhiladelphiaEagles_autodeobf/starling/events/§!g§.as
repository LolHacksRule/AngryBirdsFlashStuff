package starling.events
{
   import § N§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!g§
   {
      
      private static var §"!§:Matrix = new Matrix();
       
      
      private var §=D§:int;
      
      private var §?C§:Number;
      
      private var §"8§:Number;
      
      private var §@-§:Number;
      
      private var §;`§:Number;
      
      private var §6n§:int;
      
      private var §2R§:String;
      
      private var §8S§:DisplayObject;
      
      private var §;!5§:Number;
      
      public function §!g§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§=D§ = param1;
         this.§?C§ = this.§@-§ = param2;
         this.§"8§ = this.§;`§ = param3;
         this.§6n§ = 0;
         this.§2R§ = param4;
         this.§8S§ = param5;
      }
      
      public function §<!I§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§?C§,this.§"8§);
         this.§8S§.root.§>!B§(param1,§"!§);
         return §"!§.transformPoint(_loc2_);
      }
      
      public function §4[§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@-§,this.§;`§);
         this.§8S§.root.§>!B§(param1,§"!§);
         return §"!§.transformPoint(_loc2_);
      }
      
      public function clone() : §!g§
      {
         var _loc1_:§!g§ = new §!g§(this.§=D§,this.§?C§,this.§"8§,this.§2R§,this.§8S§);
         _loc1_.§@-§ = this.§@-§;
         _loc1_.§;`§ = this.§;`§;
         _loc1_.§6n§ = this.§6n§;
         _loc1_.§;!5§ = this.§;!5§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§=D§;
      }
      
      public function get globalX() : Number
      {
         return this.§?C§;
      }
      
      public function get globalY() : Number
      {
         return this.§"8§;
      }
      
      public function get §<!B§() : Number
      {
         return this.§@-§;
      }
      
      public function get §&c§() : Number
      {
         return this.§;`§;
      }
      
      public function get §4e§() : int
      {
         return this.§6n§;
      }
      
      public function get phase() : String
      {
         return this.§2R§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§8S§;
      }
      
      public function get timestamp() : Number
      {
         return this.§;!5§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§@-§ = this.§?C§;
         this.§;`§ = this.§"8§;
         this.§?C§ = param1;
         this.§"8§ = param2;
      }
      
      function §7b§(param1:String) : void
      {
         this.§2R§ = param1;
      }
      
      function §@k§(param1:int) : void
      {
         this.§6n§ = param1;
      }
      
      function §9X§(param1:DisplayObject) : void
      {
         this.§8S§ = param1;
      }
      
      function §0!A§(param1:Number) : void
      {
         this.§;!5§ = param1;
      }
   }
}
