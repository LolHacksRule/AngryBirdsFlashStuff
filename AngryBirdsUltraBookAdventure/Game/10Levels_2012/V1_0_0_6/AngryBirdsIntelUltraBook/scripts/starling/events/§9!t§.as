package starling.events
{
   import §7!B§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §9!t§
   {
      
      private static var §'V§:Matrix = new Matrix();
       
      
      private var §^!v§:int;
      
      private var §^0§:Number;
      
      private var §<!i§:Number;
      
      private var §`!W§:Number;
      
      private var §<j§:Number;
      
      private var §3q§:int;
      
      private var §[!h§:String;
      
      private var §#j§:DisplayObject;
      
      private var §96§:Number;
      
      public function §9!t§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§^!v§ = param1;
         this.§^0§ = this.§`!W§ = param2;
         this.§<!i§ = this.§<j§ = param3;
         this.§3q§ = 0;
         this.§[!h§ = param4;
         this.§#j§ = param5;
      }
      
      public function §5J§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^0§,this.§<!i§);
         this.§#j§.root.§6!8§(param1,§'V§);
         return §'V§.transformPoint(_loc2_);
      }
      
      public function §?W§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`!W§,this.§<j§);
         this.§#j§.root.§6!8§(param1,§'V§);
         return §'V§.transformPoint(_loc2_);
      }
      
      public function clone() : §9!t§
      {
         var _loc1_:§9!t§ = new §9!t§(this.§^!v§,this.§^0§,this.§<!i§,this.§[!h§,this.§#j§);
         _loc1_.§`!W§ = this.§`!W§;
         _loc1_.§<j§ = this.§<j§;
         _loc1_.§3q§ = this.§3q§;
         _loc1_.§96§ = this.§96§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§^!v§;
      }
      
      public function get globalX() : Number
      {
         return this.§^0§;
      }
      
      public function get globalY() : Number
      {
         return this.§<!i§;
      }
      
      public function get § !&§() : Number
      {
         return this.§`!W§;
      }
      
      public function get §'o§() : Number
      {
         return this.§<j§;
      }
      
      public function get §8_§() : int
      {
         return this.§3q§;
      }
      
      public function get phase() : String
      {
         return this.§[!h§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§#j§;
      }
      
      public function get timestamp() : Number
      {
         return this.§96§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§`!W§ = this.§^0§;
         this.§<j§ = this.§<!i§;
         this.§^0§ = param1;
         this.§<!i§ = param2;
      }
      
      function §3!f§(param1:String) : void
      {
         this.§[!h§ = param1;
      }
      
      function §-A§(param1:int) : void
      {
         this.§3q§ = param1;
      }
      
      function §?&§(param1:DisplayObject) : void
      {
         this.§#j§ = param1;
      }
      
      function §>!E§(param1:Number) : void
      {
         this.§96§ = param1;
      }
   }
}
