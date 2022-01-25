package starling.events
{
   import §;t§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §3B§
   {
      
      private static var §'t§:Matrix = new Matrix();
       
      
      private var §8!c§:int;
      
      private var §3C§:Number;
      
      private var §,G§:Number;
      
      private var §<L§:Number;
      
      private var §`t§:Number;
      
      private var §<!#§:int;
      
      private var §^?§:String;
      
      private var §0!C§:DisplayObject;
      
      private var §'`§:Number;
      
      public function §3B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§8!c§ = param1;
         this.§3C§ = this.§<L§ = param2;
         this.§,G§ = this.§`t§ = param3;
         this.§<!#§ = 0;
         this.§^?§ = param4;
         this.§0!C§ = param5;
      }
      
      public function §![§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§3C§,this.§,G§);
         this.§0!C§.root.§7!P§(param1,§'t§);
         return §'t§.transformPoint(_loc2_);
      }
      
      public function §9!0§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§<L§,this.§`t§);
         this.§0!C§.root.§7!P§(param1,§'t§);
         return §'t§.transformPoint(_loc2_);
      }
      
      public function clone() : §3B§
      {
         var _loc1_:§3B§ = new §3B§(this.§8!c§,this.§3C§,this.§,G§,this.§^?§,this.§0!C§);
         _loc1_.§<L§ = this.§<L§;
         _loc1_.§`t§ = this.§`t§;
         _loc1_.§<!#§ = this.§<!#§;
         _loc1_.§'`§ = this.§'`§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8!c§;
      }
      
      public function get globalX() : Number
      {
         return this.§3C§;
      }
      
      public function get globalY() : Number
      {
         return this.§,G§;
      }
      
      public function get §2c§() : Number
      {
         return this.§<L§;
      }
      
      public function get §,K§() : Number
      {
         return this.§`t§;
      }
      
      public function get §+! §() : int
      {
         return this.§<!#§;
      }
      
      public function get phase() : String
      {
         return this.§^?§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§0!C§;
      }
      
      public function get timestamp() : Number
      {
         return this.§'`§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§<L§ = this.§3C§;
         this.§`t§ = this.§,G§;
         this.§3C§ = param1;
         this.§,G§ = param2;
      }
      
      function §1z§(param1:String) : void
      {
         this.§^?§ = param1;
      }
      
      function §5!#§(param1:int) : void
      {
         this.§<!#§ = param1;
      }
      
      function §5!M§(param1:DisplayObject) : void
      {
         this.§0!C§ = param1;
      }
      
      function §;!2§(param1:Number) : void
      {
         this.§'`§ = param1;
      }
   }
}
