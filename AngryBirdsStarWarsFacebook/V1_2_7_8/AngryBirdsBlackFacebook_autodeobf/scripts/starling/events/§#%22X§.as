package starling.events
{
   import §1"s§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#"X§
   {
      
      private static var §4g§:Matrix = new Matrix();
       
      
      private var §<9§:int;
      
      private var §6%§:Number;
      
      private var §`=§:Number;
      
      private var §&"r§:Number;
      
      private var §>S§:Number;
      
      private var §]U§:int;
      
      private var §@#%§:String;
      
      private var §6"c§:DisplayObject;
      
      private var §3U§:Number;
      
      public function §#"X§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§<9§ = param1;
         this.§6%§ = this.§&"r§ = param2;
         this.§`=§ = this.§>S§ = param3;
         this.§]U§ = 0;
         this.§@#%§ = param4;
         this.§6"c§ = param5;
      }
      
      public function §1#-§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6%§,this.§`=§);
         this.§6"c§.root.§>"`§(param1,§4g§);
         return §4g§.transformPoint(_loc2_);
      }
      
      public function §@"d§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§&"r§,this.§>S§);
         this.§6"c§.root.§>"`§(param1,§4g§);
         return §4g§.transformPoint(_loc2_);
      }
      
      public function clone() : §#"X§
      {
         var _loc1_:§#"X§ = new §#"X§(this.§<9§,this.§6%§,this.§`=§,this.§@#%§,this.§6"c§);
         _loc1_.§&"r§ = this.§&"r§;
         _loc1_.§>S§ = this.§>S§;
         _loc1_.§]U§ = this.§]U§;
         _loc1_.§3U§ = this.§3U§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§<9§;
      }
      
      public function get globalX() : Number
      {
         return this.§6%§;
      }
      
      public function get globalY() : Number
      {
         return this.§`=§;
      }
      
      public function get §=#!§() : Number
      {
         return this.§&"r§;
      }
      
      public function get §8!g§() : Number
      {
         return this.§>S§;
      }
      
      public function get §7!s§() : int
      {
         return this.§]U§;
      }
      
      public function get phase() : String
      {
         return this.§@#%§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§6"c§;
      }
      
      public function get timestamp() : Number
      {
         return this.§3U§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§&"r§ = this.§6%§;
         this.§>S§ = this.§`=§;
         this.§6%§ = param1;
         this.§`=§ = param2;
      }
      
      function §6"z§(param1:String) : void
      {
         this.§@#%§ = param1;
      }
      
      function §?"d§(param1:int) : void
      {
         this.§]U§ = param1;
      }
      
      function §"!#§(param1:DisplayObject) : void
      {
         this.§6"c§ = param1;
      }
      
      function §%!b§(param1:Number) : void
      {
         this.§3U§ = param1;
      }
   }
}
