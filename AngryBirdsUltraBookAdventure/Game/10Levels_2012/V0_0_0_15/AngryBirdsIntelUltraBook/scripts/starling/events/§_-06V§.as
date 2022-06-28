package starling.events
{
   import §_-uY§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-06V§
   {
      
      private static var §_-6w§:Matrix = new Matrix();
       
      
      private var §_-EB§:int;
      
      private var §_-OG§:Number;
      
      private var §_-01C§:Number;
      
      private var §_-nN§:Number;
      
      private var §_-3E§:Number;
      
      private var §_-Om§:int;
      
      private var §_-0DX§:String;
      
      private var §_-EY§:DisplayObject;
      
      private var §_-0CR§:Number;
      
      public function §_-06V§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-EB§ = param1;
         this.§_-OG§ = this.§_-nN§ = param2;
         this.§_-01C§ = this.§_-3E§ = param3;
         this.§_-Om§ = 0;
         this.§_-0DX§ = param4;
         this.§_-EY§ = param5;
      }
      
      public function §_-du§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-OG§,this.§_-01C§);
         this.§_-EY§.root.§_-mP§(param1,§_-6w§);
         return §_-6w§.transformPoint(_loc2_);
      }
      
      public function §_-QB§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-nN§,this.§_-3E§);
         this.§_-EY§.root.§_-mP§(param1,§_-6w§);
         return §_-6w§.transformPoint(_loc2_);
      }
      
      public function clone() : §_-06V§
      {
         var _loc1_:§_-06V§ = new §_-06V§(this.§_-EB§,this.§_-OG§,this.§_-01C§,this.§_-0DX§,this.§_-EY§);
         _loc1_.§_-nN§ = this.§_-nN§;
         _loc1_.§_-3E§ = this.§_-3E§;
         _loc1_.§_-Om§ = this.§_-Om§;
         _loc1_.§_-0CR§ = this.§_-0CR§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-EB§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-OG§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-01C§;
      }
      
      public function get §_-UI§() : Number
      {
         return this.§_-nN§;
      }
      
      public function get §_-02C§() : Number
      {
         return this.§_-3E§;
      }
      
      public function get §_-Y3§() : int
      {
         return this.§_-Om§;
      }
      
      public function get phase() : String
      {
         return this.§_-0DX§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-EY§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-0CR§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-nN§ = this.§_-OG§;
         this.§_-3E§ = this.§_-01C§;
         this.§_-OG§ = param1;
         this.§_-01C§ = param2;
      }
      
      function §_-og§(param1:String) : void
      {
         this.§_-0DX§ = param1;
      }
      
      function §_-p9§(param1:int) : void
      {
         this.§_-Om§ = param1;
      }
      
      function §_-dc§(param1:DisplayObject) : void
      {
         this.§_-EY§ = param1;
      }
      
      function §_-Sz§(param1:Number) : void
      {
         this.§_-0CR§ = param1;
      }
   }
}
