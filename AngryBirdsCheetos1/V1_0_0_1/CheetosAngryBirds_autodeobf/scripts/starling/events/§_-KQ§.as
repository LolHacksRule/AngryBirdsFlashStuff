package starling.events
{
   import §_-Ls§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-KQ§
   {
       
      
      private var §true §:int;
      
      private var §_-p-§:Number;
      
      private var §_-cf§:Number;
      
      private var §_-MF§:Number;
      
      private var §_-DH§:Number;
      
      private var §_-iI§:int;
      
      private var §_-9h§:String;
      
      private var §_-tB§:DisplayObject;
      
      private var §_-K5§:Number;
      
      public function §_-KQ§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§true § = param1;
         this.§_-p-§ = this.§_-MF§ = param2;
         this.§_-cf§ = this.§_-DH§ = param3;
         this.§_-iI§ = 0;
         this.§_-9h§ = param4;
         this.§_-tB§ = param5;
      }
      
      public function §_-Ke§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-p-§,this.§_-cf§);
         var _loc3_:Matrix = this.§_-tB§.root.§_-R0§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-vv§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-MF§,this.§_-DH§);
         var _loc3_:Matrix = this.§_-tB§.root.§_-R0§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-KQ§
      {
         var _loc1_:§_-KQ§ = new §_-KQ§(this.§true §,this.§_-p-§,this.§_-cf§,this.§_-9h§,this.§_-tB§);
         _loc1_.§_-MF§ = this.§_-MF§;
         _loc1_.§_-DH§ = this.§_-DH§;
         _loc1_.§_-iI§ = this.§_-iI§;
         _loc1_.§_-K5§ = this.§_-K5§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§true §;
      }
      
      public function get globalX() : Number
      {
         return this.§_-p-§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-cf§;
      }
      
      public function get §_-Uq§() : Number
      {
         return this.§_-MF§;
      }
      
      public function get §_-YK§() : Number
      {
         return this.§_-DH§;
      }
      
      public function get §_-y1§() : int
      {
         return this.§_-iI§;
      }
      
      public function get phase() : String
      {
         return this.§_-9h§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-tB§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-K5§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-MF§ = this.§_-p-§;
         this.§_-DH§ = this.§_-cf§;
         this.§_-p-§ = param1;
         this.§_-cf§ = param2;
      }
      
      function §_-nD§(param1:String) : void
      {
         this.§_-9h§ = param1;
      }
      
      function §_-R2§(param1:int) : void
      {
         this.§_-iI§ = param1;
      }
      
      function §_-xW§(param1:DisplayObject) : void
      {
         this.§_-tB§ = param1;
      }
      
      function §_-ho§(param1:Number) : void
      {
         this.§_-K5§ = param1;
      }
   }
}
