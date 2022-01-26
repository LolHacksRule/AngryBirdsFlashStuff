package starling.events
{
   import §case §.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-QO§
   {
      
      private static var §_-1g§:Matrix = new Matrix();
       
      
      private var §_-yq§:int;
      
      private var §_-00X§:Number;
      
      private var §_-jv§:Number;
      
      private var §_-vI§:Number;
      
      private var §_-Do§:Number;
      
      private var §_-nY§:int;
      
      private var §_-XA§:String;
      
      private var §_-wF§:DisplayObject;
      
      private var §_-HL§:Number;
      
      public function §_-QO§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§_-yq§ = param1;
         this.§_-00X§ = this.§_-vI§ = param2;
         this.§_-jv§ = this.§_-Do§ = param3;
         this.§_-nY§ = 0;
         this.§_-XA§ = param4;
         this.§_-wF§ = param5;
      }
      
      public function §_-fY§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-00X§,this.§_-jv§);
         this.§_-wF§.root.§_-P4§(param1,§_-1g§);
         return §_-1g§.transformPoint(_loc2_);
      }
      
      public function §_-mq§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-vI§,this.§_-Do§);
         this.§_-wF§.root.§_-P4§(param1,§_-1g§);
         return §_-1g§.transformPoint(_loc2_);
      }
      
      public function clone() : §_-QO§
      {
         var _loc1_:§_-QO§ = new §_-QO§(this.§_-yq§,this.§_-00X§,this.§_-jv§,this.§_-XA§,this.§_-wF§);
         _loc1_.§_-vI§ = this.§_-vI§;
         _loc1_.§_-Do§ = this.§_-Do§;
         _loc1_.§_-nY§ = this.§_-nY§;
         _loc1_.§_-HL§ = this.§_-HL§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§_-yq§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-00X§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-jv§;
      }
      
      public function get §_-ay§() : Number
      {
         return this.§_-vI§;
      }
      
      public function get §_-U9§() : Number
      {
         return this.§_-Do§;
      }
      
      public function get §_-CQ§() : int
      {
         return this.§_-nY§;
      }
      
      public function get phase() : String
      {
         return this.§_-XA§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-wF§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-HL§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§_-vI§ = this.§_-00X§;
         this.§_-Do§ = this.§_-jv§;
         this.§_-00X§ = param1;
         this.§_-jv§ = param2;
      }
      
      function §_-IZ§(param1:String) : void
      {
         this.§_-XA§ = param1;
      }
      
      function §_-9f§(param1:int) : void
      {
         this.§_-nY§ = param1;
      }
      
      function §_-bw§(param1:DisplayObject) : void
      {
         this.§_-wF§ = param1;
      }
      
      function §_-J0§(param1:Number) : void
      {
         this.§_-HL§ = param1;
      }
   }
}
