package starling.events
{
   import §->§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § K§
   {
      
      private static var §0j§:Matrix = new Matrix();
       
      
      private var §`!,§:int;
      
      private var §4N§:Number;
      
      private var §@C§:Number;
      
      private var §%f§:Number;
      
      private var §&>§:Number;
      
      private var §?!0§:int;
      
      private var §!!2§:String;
      
      private var override:DisplayObject;
      
      private var §3!9§:Number;
      
      public function § K§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§`!,§ = param1;
         this.§4N§ = this.§%f§ = param2;
         this.§@C§ = this.§&>§ = param3;
         this.§?!0§ = 0;
         this.§!!2§ = param4;
         this.override = param5;
      }
      
      public function §&!A§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§4N§,this.§@C§);
         this.override.root.§ I§(param1,§0j§);
         return §0j§.transformPoint(_loc2_);
      }
      
      public function §63§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%f§,this.§&>§);
         this.override.root.§ I§(param1,§0j§);
         return §0j§.transformPoint(_loc2_);
      }
      
      public function clone() : § K§
      {
         var _loc1_:§ K§ = new § K§(this.§`!,§,this.§4N§,this.§@C§,this.§!!2§,this.override);
         _loc1_.§%f§ = this.§%f§;
         _loc1_.§&>§ = this.§&>§;
         _loc1_.§?!0§ = this.§?!0§;
         _loc1_.§3!9§ = this.§3!9§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§`!,§;
      }
      
      public function get globalX() : Number
      {
         return this.§4N§;
      }
      
      public function get globalY() : Number
      {
         return this.§@C§;
      }
      
      public function get §=!+§() : Number
      {
         return this.§%f§;
      }
      
      public function get §0!>§() : Number
      {
         return this.§&>§;
      }
      
      public function get §0!§() : int
      {
         return this.§?!0§;
      }
      
      public function get phase() : String
      {
         return this.§!!2§;
      }
      
      public function get target() : DisplayObject
      {
         return this.override;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!9§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§%f§ = this.§4N§;
         this.§&>§ = this.§@C§;
         this.§4N§ = param1;
         this.§@C§ = param2;
      }
      
      function §0!,§(param1:String) : void
      {
         this.§!!2§ = param1;
      }
      
      function §69§(param1:int) : void
      {
         this.§?!0§ = param1;
      }
      
      function §#7§(param1:DisplayObject) : void
      {
         this.override = param1;
      }
      
      function §0R§(param1:Number) : void
      {
         this.§3!9§ = param1;
      }
   }
}
