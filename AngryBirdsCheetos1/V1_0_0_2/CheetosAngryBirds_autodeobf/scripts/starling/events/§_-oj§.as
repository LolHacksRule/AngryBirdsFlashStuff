package starling.events
{
   import §_-GY§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-oj§
   {
       
      
      private var §_-ke§:int;
      
      private var §_-qk§:Number;
      
      private var §_-vO§:Number;
      
      private var §_-AJ§:Number;
      
      private var §_-zs§:Number;
      
      private var §_-wD§:int;
      
      private var §_-0G§:String;
      
      private var §_-GK§:DisplayObject;
      
      private var §_-qJ§:Number;
      
      public function §_-oj§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-ke§ = param1;
         this.§_-qk§ = this.§_-AJ§ = param2;
         this.§_-vO§ = this.§_-zs§ = param3;
         this.§_-wD§ = 0;
         this.§_-0G§ = param4;
         this.§_-GK§ = param5;
      }
      
      public function §_-sH§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-qk§,this.§_-vO§);
         var _loc3_:Matrix = this.§_-GK§.root.§_-c2§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-Bz§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-AJ§,this.§_-zs§);
         var _loc3_:Matrix = this.§_-GK§.root.§_-c2§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-oj§
      {
         var _loc1_:§_-oj§ = new §_-oj§(this.§_-ke§,this.§_-qk§,this.§_-vO§,this.§_-0G§,this.§_-GK§);
         _loc1_.§_-AJ§ = this.§_-AJ§;
         _loc1_.§_-zs§ = this.§_-zs§;
         _loc1_.§_-wD§ = this.§_-wD§;
         _loc1_.§_-qJ§ = this.§_-qJ§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-ke§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-qk§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-vO§;
      }
      
      public function get §_-L4§() : Number
      {
         return this.§_-AJ§;
      }
      
      public function get §_-aP§() : Number
      {
         return this.§_-zs§;
      }
      
      public function get §_-A0§() : int
      {
         return this.§_-wD§;
      }
      
      public function get phase() : String
      {
         return this.§_-0G§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-GK§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-qJ§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-AJ§ = this.§_-qk§;
         this.§_-zs§ = this.§_-vO§;
         this.§_-qk§ = param1;
         this.§_-vO§ = param2;
      }
      
      function §_-8Z§(param1:String) : void
      {
         this.§_-0G§ = param1;
      }
      
      function §_-vZ§(param1:int) : void
      {
         this.§_-wD§ = param1;
      }
      
      function §_-QX§(param1:DisplayObject) : void
      {
         this.§_-GK§ = param1;
      }
      
      function §_-§(param1:Number) : void
      {
         this.§_-qJ§ = param1;
      }
   }
}
