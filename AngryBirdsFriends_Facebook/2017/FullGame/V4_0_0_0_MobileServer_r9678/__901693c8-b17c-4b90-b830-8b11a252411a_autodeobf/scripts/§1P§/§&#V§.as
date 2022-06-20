package §1P§
{
   import §&!v§.DisplayObject;
   import §>l§.§+!Y§;
   import §>l§.formatString;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §&#V§
   {
      
      private static var §<#k§:Matrix = new Matrix();
       
      
      private var §["e§:int;
      
      private var §1$5§:Number;
      
      private var §#!7§:Number;
      
      private var §8>§:Number;
      
      private var §4"P§:Number;
      
      private var §7#i§:int;
      
      private var §"<§:String;
      
      private var §,!T§:DisplayObject;
      
      private var §4#V§:Number;
      
      private var §?!d§:Number;
      
      private var §%?§:Number;
      
      private var §4!=§:Number;
      
      private var § ";§:Number;
      
      private var §;!U§:Number;
      
      private var §5#%§:Vector.<EventDispatcher>;
      
      public function §&#V§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§["e§ = param1;
         this.§1$5§ = this.§8>§ = param2;
         this.§#!7§ = this.§4"P§ = param3;
         this.§7#i§ = 0;
         this.§"<§ = param4;
         this.§,!T§ = param5;
         this.§4!=§ = this.§ ";§ = this.§;!U§ = 1;
         this.§5#%§ = new Vector.<EventDispatcher>(0);
         this.§`!6§();
      }
      
      public function §&"E§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§='§(param1,§<#k§);
         return §+!Y§.§^t§(§<#k§,this.§1$5§,this.§#!7§,param2);
      }
      
      public function §5k§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§='§(param1,§<#k§);
         return §+!Y§.§^t§(§<#k§,this.§8>§,this.§4"P§,param2);
      }
      
      public function §-",§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§&"E§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§5k§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §="h§(param1:DisplayObject) : Boolean
      {
         return this.§5#%§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§["e§,this.§1$5§,this.§#!7§,this.§"<§);
      }
      
      public function clone() : §&#V§
      {
         var _loc1_:§&#V§ = new §&#V§(this.§["e§,this.§1$5§,this.§#!7§,this.§"<§,this.§,!T§);
         _loc1_.§8>§ = this.§8>§;
         _loc1_.§4"P§ = this.§4"P§;
         _loc1_.§7#i§ = this.§7#i§;
         _loc1_.§4#V§ = this.§4#V§;
         _loc1_.§?!d§ = this.§?!d§;
         _loc1_.§4!=§ = this.§4!=§;
         _loc1_.§ ";§ = this.§ ";§;
         _loc1_.§;!U§ = this.§;!U§;
         return _loc1_;
      }
      
      private function §`!6§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§,!T§)
         {
            _loc1_ = 1;
            _loc2_ = this.§,!T§;
            this.§5#%§.length = 1;
            this.§5#%§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§5#%§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§5#%§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§["e§;
      }
      
      public function get globalX() : Number
      {
         return this.§1$5§;
      }
      
      public function get globalY() : Number
      {
         return this.§#!7§;
      }
      
      public function get §!#T§() : Number
      {
         return this.§8>§;
      }
      
      public function get §>!=§() : Number
      {
         return this.§4"P§;
      }
      
      public function get §@"j§() : int
      {
         return this.§7#i§;
      }
      
      public function get phase() : String
      {
         return this.§"<§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§,!T§;
      }
      
      public function get timestamp() : Number
      {
         return this.§4#V§;
      }
      
      public function get §0"V§() : Number
      {
         return this.§?!d§;
      }
      
      public function get §0#y§() : Number
      {
         return this.§%?§;
      }
      
      public function get pressure() : Number
      {
         return this.§4!=§;
      }
      
      public function get width() : Number
      {
         return this.§ ";§;
      }
      
      public function get height() : Number
      {
         return this.§;!U§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§,!T§)
         {
            param1.§+!p§(this.§5#%§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§5#%§.concat();
      }
      
      function §"0§(param1:DisplayObject) : void
      {
         this.§,!T§ = param1;
         this.§`!6§();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§8>§ = this.§1$5§;
         this.§4"P§ = this.§#!7§;
         this.§1$5§ = param1;
         this.§#!7§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§ ";§ = param1;
         this.§;!U§ = param2;
      }
      
      function §1"`§(param1:String) : void
      {
         if(param1 != §-§.§2V§)
         {
            this.§?!d§ = NaN;
         }
         else if(this.§"<§ != §-§.§2V§)
         {
            this.§%?§ = NaN;
         }
         this.§"<§ = param1;
      }
      
      function §`$8§(param1:int) : void
      {
         this.§7#i§ = param1;
      }
      
      function §1#C§(param1:Number) : void
      {
         this.§4#V§ = param1;
         if(isNaN(this.§?!d§) && this.§"<§ == §-§.§?#S§)
         {
            this.§?!d§ = this.§4#V§;
         }
         if(isNaN(this.§%?§) && this.§"<§ == §-§.§2V§)
         {
            this.§%?§ = this.§4#V§;
         }
      }
      
      function §?i§(param1:Number) : void
      {
         this.§4!=§ = param1;
      }
   }
}
