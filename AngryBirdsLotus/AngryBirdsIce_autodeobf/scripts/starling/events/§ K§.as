package starling.events
{
   import §^V§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § K§
   {
      
      private static var §"R§:Matrix = new Matrix();
       
      
      private var §^?§:int;
      
      private var §[!-§:Number;
      
      private var §@q§:Number;
      
      private var §^!?§:Number;
      
      private var §=g§:Number;
      
      private var §#l§:int;
      
      private var §+!-§:String;
      
      private var §3!2§:DisplayObject;
      
      private var §-!A§:Number;
      
      public function § K§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§^?§ = param1;
         this.§[!-§ = this.§^!?§ = param2;
         this.§@q§ = this.§=g§ = param3;
         this.§#l§ = 0;
         this.§+!-§ = param4;
         this.§3!2§ = param5;
      }
      
      public function §8Q§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[!-§,this.§@q§);
         this.§3!2§.root.§8n§(param1,§"R§);
         return §"R§.transformPoint(_loc2_);
      }
      
      public function §-^§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!?§,this.§=g§);
         this.§3!2§.root.§8n§(param1,§"R§);
         return §"R§.transformPoint(_loc2_);
      }
      
      public function clone() : § K§
      {
         var _loc1_:§ K§ = new § K§(this.§^?§,this.§[!-§,this.§@q§,this.§+!-§,this.§3!2§);
         _loc1_.§^!?§ = this.§^!?§;
         _loc1_.§=g§ = this.§=g§;
         _loc1_.§#l§ = this.§#l§;
         _loc1_.§-!A§ = this.§-!A§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§^?§;
      }
      
      public function get globalX() : Number
      {
         return this.§[!-§;
      }
      
      public function get globalY() : Number
      {
         return this.§@q§;
      }
      
      public function get §#I§() : Number
      {
         return this.§^!?§;
      }
      
      public function get § !3§() : Number
      {
         return this.§=g§;
      }
      
      public function get §#'§() : int
      {
         return this.§#l§;
      }
      
      public function get phase() : String
      {
         return this.§+!-§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§3!2§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-!A§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^!?§ = this.§[!-§;
         this.§=g§ = this.§@q§;
         this.§[!-§ = param1;
         this.§@q§ = param2;
      }
      
      function §5!>§(param1:String) : void
      {
         this.§+!-§ = param1;
      }
      
      function §[>§(param1:int) : void
      {
         this.§#l§ = param1;
      }
      
      function §!g§(param1:DisplayObject) : void
      {
         this.§3!2§ = param1;
      }
      
      function §2!C§(param1:Number) : void
      {
         this.§-!A§ = param1;
      }
   }
}
