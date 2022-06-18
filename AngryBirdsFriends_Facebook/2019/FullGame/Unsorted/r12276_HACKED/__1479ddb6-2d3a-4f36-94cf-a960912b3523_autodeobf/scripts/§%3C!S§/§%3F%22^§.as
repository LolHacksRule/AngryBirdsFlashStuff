package §<!S§
{
   import §#Z§.DisplayObject;
   import §0"D§.§ #r§;
   import §0"D§.formatString;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?"^§
   {
      
      private static var §5y§:Matrix = new Matrix();
       
      
      private var §6!'§:int;
      
      private var §3m§:Number;
      
      private var §?!C§:Number;
      
      private var § $5§:Number;
      
      private var §[!>§:Number;
      
      private var §4"N§:int;
      
      private var §@#D§:String;
      
      private var §7N§:DisplayObject;
      
      private var §`!0§:Number;
      
      private var §3$@§:Number;
      
      private var §3!c§:Number;
      
      private var §4#@§:Number;
      
      private var §@!l§:Number;
      
      private var §,7§:Number;
      
      private var §,<§:Vector.<EventDispatcher>;
      
      public function §?"^§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§6!'§ = param1;
         this.§3m§ = this.§ $5§ = param2;
         this.§?!C§ = this.§[!>§ = param3;
         this.§4"N§ = 0;
         this.§@#D§ = param4;
         this.§7N§ = param5;
         this.§4#@§ = this.§@!l§ = this.§,7§ = 1;
         this.§,<§ = new Vector.<EventDispatcher>(0);
         this.§-J§();
      }
      
      public function §'"^§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§?P§(param1,§5y§);
         return § #r§.§7t§(§5y§,this.§3m§,this.§?!C§,param2);
      }
      
      public function §`#]§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§?P§(param1,§5y§);
         return § #r§.§7t§(§5y§,this.§ $5§,this.§[!>§,param2);
      }
      
      public function §;M§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§'"^§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§`#]§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §5"I§(param1:DisplayObject) : Boolean
      {
         return this.§,<§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§6!'§,this.§3m§,this.§?!C§,this.§@#D§);
      }
      
      public function clone() : §?"^§
      {
         var _loc1_:§?"^§ = new §?"^§(this.§6!'§,this.§3m§,this.§?!C§,this.§@#D§,this.§7N§);
         _loc1_.§ $5§ = this.§ $5§;
         _loc1_.§[!>§ = this.§[!>§;
         _loc1_.§4"N§ = this.§4"N§;
         _loc1_.§`!0§ = this.§`!0§;
         _loc1_.§3$@§ = this.§3$@§;
         _loc1_.§4#@§ = this.§4#@§;
         _loc1_.§@!l§ = this.§@!l§;
         _loc1_.§,7§ = this.§,7§;
         return _loc1_;
      }
      
      private function §-J§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§7N§)
         {
            _loc1_ = 1;
            _loc2_ = this.§7N§;
            this.§,<§.length = 1;
            this.§,<§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§,<§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§,<§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§6!'§;
      }
      
      public function get globalX() : Number
      {
         return this.§3m§;
      }
      
      public function get globalY() : Number
      {
         return this.§?!C§;
      }
      
      public function get §?8§() : Number
      {
         return this.§ $5§;
      }
      
      public function get §<"z§() : Number
      {
         return this.§[!>§;
      }
      
      public function get §>#F§() : int
      {
         return this.§4"N§;
      }
      
      public function get phase() : String
      {
         return this.§@#D§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§7N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!0§;
      }
      
      public function get §9!M§() : Number
      {
         return this.§3$@§;
      }
      
      public function get §^"6§() : Number
      {
         return this.§3!c§;
      }
      
      public function get pressure() : Number
      {
         return this.§4#@§;
      }
      
      public function get width() : Number
      {
         return this.§@!l§;
      }
      
      public function get height() : Number
      {
         return this.§,7§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§7N§)
         {
            param1.§'$<§(this.§,<§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§,<§.concat();
      }
      
      function §7"I§(param1:DisplayObject) : void
      {
         this.§7N§ = param1;
         this.§-J§();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§ $5§ = this.§3m§;
         this.§[!>§ = this.§?!C§;
         this.§3m§ = param1;
         this.§?!C§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§@!l§ = param1;
         this.§,7§ = param2;
      }
      
      function §%$A§(param1:String) : void
      {
         if(param1 != §2w§.§]#C§)
         {
            this.§3$@§ = NaN;
         }
         else if(this.§@#D§ != §2w§.§]#C§)
         {
            this.§3!c§ = NaN;
         }
         this.§@#D§ = param1;
      }
      
      function §0"j§(param1:int) : void
      {
         this.§4"N§ = param1;
      }
      
      function §-!z§(param1:Number) : void
      {
         this.§`!0§ = param1;
         if(isNaN(this.§3$@§) && this.§@#D§ == §2w§.§@$;§)
         {
            this.§3$@§ = this.§`!0§;
         }
         if(isNaN(this.§3!c§) && this.§@#D§ == §2w§.§]#C§)
         {
            this.§3!c§ = this.§`!0§;
         }
      }
      
      function §>!Q§(param1:Number) : void
      {
         this.§4#@§ = param1;
      }
   }
}
