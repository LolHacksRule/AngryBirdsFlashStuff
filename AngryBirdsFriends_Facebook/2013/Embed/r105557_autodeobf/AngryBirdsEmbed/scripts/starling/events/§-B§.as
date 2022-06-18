package starling.events
{
   import §;^§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §-B§
   {
      
      private static var §,!!§:Matrix = new Matrix();
       
      
      private var § !L§:int;
      
      private var §`!L§:Number;
      
      private var §`2§:Number;
      
      private var §^b§:Number;
      
      private var §]?§:Number;
      
      private var §90§:int;
      
      private var §[!4§:String;
      
      private var §4!-§:DisplayObject;
      
      private var §^!6§:Number;
      
      public function §-B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§ !L§ = param1;
         this.§`!L§ = this.§^b§ = param2;
         this.§`2§ = this.§]?§ = param3;
         this.§90§ = 0;
         this.§[!4§ = param4;
         this.§4!-§ = param5;
      }
      
      public function §1C§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`!L§,this.§`2§);
         this.§4!-§.root.§+9§(param1,§,!!§);
         return §,!!§.transformPoint(_loc2_);
      }
      
      public function §%>§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^b§,this.§]?§);
         this.§4!-§.root.§+9§(param1,§,!!§);
         return §,!!§.transformPoint(_loc2_);
      }
      
      public function clone() : §-B§
      {
         var _loc1_:§-B§ = new §-B§(this.§ !L§,this.§`!L§,this.§`2§,this.§[!4§,this.§4!-§);
         _loc1_.§^b§ = this.§^b§;
         _loc1_.§]?§ = this.§]?§;
         _loc1_.§90§ = this.§90§;
         _loc1_.§^!6§ = this.§^!6§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§ !L§;
      }
      
      public function get globalX() : Number
      {
         return this.§`!L§;
      }
      
      public function get globalY() : Number
      {
         return this.§`2§;
      }
      
      public function get §<Q§() : Number
      {
         return this.§^b§;
      }
      
      public function get §2n§() : Number
      {
         return this.§]?§;
      }
      
      public function get §<u§() : int
      {
         return this.§90§;
      }
      
      public function get phase() : String
      {
         return this.§[!4§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§4!-§;
      }
      
      public function get timestamp() : Number
      {
         return this.§^!6§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^b§ = this.§`!L§;
         this.§]?§ = this.§`2§;
         this.§`!L§ = param1;
         this.§`2§ = param2;
      }
      
      function §'D§(param1:String) : void
      {
         this.§[!4§ = param1;
      }
      
      function §5$§(param1:int) : void
      {
         this.§90§ = param1;
      }
      
      function §=B§(param1:DisplayObject) : void
      {
         this.§4!-§ = param1;
      }
      
      function §;!N§(param1:Number) : void
      {
         this.§^!6§ = param1;
      }
   }
}
