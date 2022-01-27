package starling.events
{
   import §<!N§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<p§
   {
      
      private static var §8!J§:Matrix = new Matrix();
       
      
      private var §;+§:int;
      
      private var §+q§:Number;
      
      private var §0$§:Number;
      
      private var §'!=§:Number;
      
      private var §9p§:Number;
      
      private var §%!3§:int;
      
      private var §"!N§:String;
      
      private var §<[§:DisplayObject;
      
      private var §=O§:Number;
      
      public function §<p§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§;+§ = param1;
         this.§+q§ = this.§'!=§ = param2;
         this.§0$§ = this.§9p§ = param3;
         this.§%!3§ = 0;
         this.§"!N§ = param4;
         this.§<[§ = param5;
      }
      
      public function §5!1§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§+q§,this.§0$§);
         this.§<[§.root.§1!H§(param1,§8!J§);
         return §8!J§.transformPoint(_loc2_);
      }
      
      public function §=u§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§'!=§,this.§9p§);
         this.§<[§.root.§1!H§(param1,§8!J§);
         return §8!J§.transformPoint(_loc2_);
      }
      
      public function clone() : §<p§
      {
         var _loc1_:§<p§ = new §<p§(this.§;+§,this.§+q§,this.§0$§,this.§"!N§,this.§<[§);
         _loc1_.§'!=§ = this.§'!=§;
         _loc1_.§9p§ = this.§9p§;
         _loc1_.§%!3§ = this.§%!3§;
         _loc1_.§=O§ = this.§=O§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§;+§;
      }
      
      public function get globalX() : Number
      {
         return this.§+q§;
      }
      
      public function get globalY() : Number
      {
         return this.§0$§;
      }
      
      public function get §]@§() : Number
      {
         return this.§'!=§;
      }
      
      public function get §,4§() : Number
      {
         return this.§9p§;
      }
      
      public function get §]!@§() : int
      {
         return this.§%!3§;
      }
      
      public function get phase() : String
      {
         return this.§"!N§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§<[§;
      }
      
      public function get timestamp() : Number
      {
         return this.§=O§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§'!=§ = this.§+q§;
         this.§9p§ = this.§0$§;
         this.§+q§ = param1;
         this.§0$§ = param2;
      }
      
      function §"!7§(param1:String) : void
      {
         this.§"!N§ = param1;
      }
      
      function §'!"§(param1:int) : void
      {
         this.§%!3§ = param1;
      }
      
      function §?p§(param1:DisplayObject) : void
      {
         this.§<[§ = param1;
      }
      
      function §5!@§(param1:Number) : void
      {
         this.§=O§ = param1;
      }
   }
}
