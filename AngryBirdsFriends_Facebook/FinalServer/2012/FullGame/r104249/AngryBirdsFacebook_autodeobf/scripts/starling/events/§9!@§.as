package starling.events
{
   import §]!v§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §9!@§
   {
      
      private static var §"5§:Matrix = new Matrix();
       
      
      private var §+!W§:int;
      
      private var §5=§:Number;
      
      private var §["3§:Number;
      
      private var §&!E§:Number;
      
      private var §=`§:Number;
      
      private var §^H§:int;
      
      private var §7e§:String;
      
      private var §^e§:DisplayObject;
      
      private var §^!9§:Number;
      
      public function §9!@§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§+!W§ = param1;
         this.§5=§ = this.§&!E§ = param2;
         this.§["3§ = this.§=`§ = param3;
         this.§^H§ = 0;
         this.§7e§ = param4;
         this.§^e§ = param5;
      }
      
      public function §%!9§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5=§,this.§["3§);
         this.§^e§.root.§["+§(param1,§"5§);
         return §"5§.transformPoint(_loc2_);
      }
      
      public function §0u§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§&!E§,this.§=`§);
         this.§^e§.root.§["+§(param1,§"5§);
         return §"5§.transformPoint(_loc2_);
      }
      
      public function clone() : §9!@§
      {
         var _loc1_:§9!@§ = new §9!@§(this.§+!W§,this.§5=§,this.§["3§,this.§7e§,this.§^e§);
         _loc1_.§&!E§ = this.§&!E§;
         _loc1_.§=`§ = this.§=`§;
         _loc1_.§^H§ = this.§^H§;
         _loc1_.§^!9§ = this.§^!9§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§+!W§;
      }
      
      public function get globalX() : Number
      {
         return this.§5=§;
      }
      
      public function get globalY() : Number
      {
         return this.§["3§;
      }
      
      public function get §<+§() : Number
      {
         return this.§&!E§;
      }
      
      public function get §0b§() : Number
      {
         return this.§=`§;
      }
      
      public function get §3!O§() : int
      {
         return this.§^H§;
      }
      
      public function get phase() : String
      {
         return this.§7e§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§^e§;
      }
      
      public function get timestamp() : Number
      {
         return this.§^!9§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§&!E§ = this.§5=§;
         this.§=`§ = this.§["3§;
         this.§5=§ = param1;
         this.§["3§ = param2;
      }
      
      function §2"-§(param1:String) : void
      {
         this.§7e§ = param1;
      }
      
      function §4K§(param1:int) : void
      {
         this.§^H§ = param1;
      }
      
      function §<r§(param1:DisplayObject) : void
      {
         this.§^e§ = param1;
      }
      
      function §05§(param1:Number) : void
      {
         this.§^!9§ = param1;
      }
   }
}
