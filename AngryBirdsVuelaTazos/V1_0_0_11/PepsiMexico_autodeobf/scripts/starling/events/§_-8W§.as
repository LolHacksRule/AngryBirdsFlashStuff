package starling.events
{
   import §_-vO§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-8W§
   {
       
      
      private var §_-3P§:int;
      
      private var §_-dr§:Number;
      
      private var §_-OR§:Number;
      
      private var §_-MB§:Number;
      
      private var §_-kp§:Number;
      
      private var §_-l8§:int;
      
      private var §_-CO§:String;
      
      private var §_-Ul§:DisplayObject;
      
      private var §_-LN§:Number;
      
      public function §_-8W§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-3P§ = param1;
         this.§_-dr§ = this.§_-MB§ = param2;
         this.§_-OR§ = this.§_-kp§ = param3;
         this.§_-l8§ = 0;
         this.§_-CO§ = param4;
         this.§_-Ul§ = param5;
      }
      
      public function §_-Bv§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-dr§,this.§_-OR§);
         var _loc3_:Matrix = this.§_-Ul§.root.§_-R9§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-kP§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-MB§,this.§_-kp§);
         var _loc3_:Matrix = this.§_-Ul§.root.§_-R9§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-8W§
      {
         var _loc1_:§_-8W§ = new §_-8W§(this.§_-3P§,this.§_-dr§,this.§_-OR§,this.§_-CO§,this.§_-Ul§);
         _loc1_.§_-MB§ = this.§_-MB§;
         _loc1_.§_-kp§ = this.§_-kp§;
         _loc1_.§_-l8§ = this.§_-l8§;
         _loc1_.§_-LN§ = this.§_-LN§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-3P§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-dr§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-OR§;
      }
      
      public function get §_-Us§() : Number
      {
         return this.§_-MB§;
      }
      
      public function get §_-xJ§() : Number
      {
         return this.§_-kp§;
      }
      
      public function get §_-jR§() : int
      {
         return this.§_-l8§;
      }
      
      public function get phase() : String
      {
         return this.§_-CO§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Ul§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-LN§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-MB§ = this.§_-dr§;
         this.§_-kp§ = this.§_-OR§;
         this.§_-dr§ = param1;
         this.§_-OR§ = param2;
      }
      
      function §_-oa§(param1:String) : void
      {
         this.§_-CO§ = param1;
      }
      
      function §_-8Y§(param1:int) : void
      {
         this.§_-l8§ = param1;
      }
      
      function §_-Kq§(param1:DisplayObject) : void
      {
         this.§_-Ul§ = param1;
      }
      
      function §_-FQ§(param1:Number) : void
      {
         this.§_-LN§ = param1;
      }
   }
}
