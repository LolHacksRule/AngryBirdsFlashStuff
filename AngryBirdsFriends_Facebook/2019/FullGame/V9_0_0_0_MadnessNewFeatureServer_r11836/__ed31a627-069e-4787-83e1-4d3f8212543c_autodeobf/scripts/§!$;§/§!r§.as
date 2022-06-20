package §!$;§
{
   import §,#=§.§>V§;
   import §,#=§.formatString;
   import §6#H§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!r§
   {
      
      private static var §-#[§:Matrix = new Matrix();
       
      
      private var §2!`§:int;
      
      private var §%#W§:Number;
      
      private var §1&§:Number;
      
      private var §'"g§:Number;
      
      private var §7#S§:Number;
      
      private var §>"i§:int;
      
      private var §-!Y§:String;
      
      private var §##i§:DisplayObject;
      
      private var §?!!§:Number;
      
      private var §"$9§:Number;
      
      private var §%!`§:Number;
      
      private var §"#K§:Number;
      
      private var §>H§:Number;
      
      private var §^l§:Number;
      
      private var §'#a§:Vector.<EventDispatcher>;
      
      public function §!r§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§2!`§ = param1;
         this.§%#W§ = this.§'"g§ = param2;
         this.§1&§ = this.§7#S§ = param3;
         this.§>"i§ = 0;
         this.§-!Y§ = param4;
         this.§##i§ = param5;
         this.§"#K§ = this.§>H§ = this.§^l§ = 1;
         this.§'#a§ = new Vector.<EventDispatcher>(0);
         this.§[#A§();
      }
      
      public function §!"Y§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§+#W§(param1,§-#[§);
         return §>V§.§2>§(§-#[§,this.§%#W§,this.§1&§,param2);
      }
      
      public function §?"`§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§+#W§(param1,§-#[§);
         return §>V§.§2>§(§-#[§,this.§'"g§,this.§7#S§,param2);
      }
      
      public function §4!y§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§!"Y§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§?"`§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §@$$§(param1:DisplayObject) : Boolean
      {
         return this.§'#a§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§2!`§,this.§%#W§,this.§1&§,this.§-!Y§);
      }
      
      public function clone() : §!r§
      {
         var _loc1_:§!r§ = new §!r§(this.§2!`§,this.§%#W§,this.§1&§,this.§-!Y§,this.§##i§);
         _loc1_.§'"g§ = this.§'"g§;
         _loc1_.§7#S§ = this.§7#S§;
         _loc1_.§>"i§ = this.§>"i§;
         _loc1_.§?!!§ = this.§?!!§;
         _loc1_.§"$9§ = this.§"$9§;
         _loc1_.§"#K§ = this.§"#K§;
         _loc1_.§>H§ = this.§>H§;
         _loc1_.§^l§ = this.§^l§;
         return _loc1_;
      }
      
      private function §[#A§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§##i§)
         {
            _loc1_ = 1;
            _loc2_ = this.§##i§;
            this.§'#a§.length = 1;
            this.§'#a§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§'#a§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§'#a§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§2!`§;
      }
      
      public function get globalX() : Number
      {
         return this.§%#W§;
      }
      
      public function get globalY() : Number
      {
         return this.§1&§;
      }
      
      public function get §0"$§() : Number
      {
         return this.§'"g§;
      }
      
      public function get §^2§() : Number
      {
         return this.§7#S§;
      }
      
      public function get §["P§() : int
      {
         return this.§>"i§;
      }
      
      public function get phase() : String
      {
         return this.§-!Y§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§##i§;
      }
      
      public function get timestamp() : Number
      {
         return this.§?!!§;
      }
      
      public function get §>#G§() : Number
      {
         return this.§"$9§;
      }
      
      public function get §!"R§() : Number
      {
         return this.§%!`§;
      }
      
      public function get pressure() : Number
      {
         return this.§"#K§;
      }
      
      public function get width() : Number
      {
         return this.§>H§;
      }
      
      public function get height() : Number
      {
         return this.§^l§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§##i§)
         {
            param1.§&"U§(this.§'#a§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§'#a§.concat();
      }
      
      function §15§(param1:DisplayObject) : void
      {
         this.§##i§ = param1;
         this.§[#A§();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§'"g§ = this.§%#W§;
         this.§7#S§ = this.§1&§;
         this.§%#W§ = param1;
         this.§1&§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§>H§ = param1;
         this.§^l§ = param2;
      }
      
      function §[!5§(param1:String) : void
      {
         if(param1 != §4$8§.§5"-§)
         {
            this.§"$9§ = NaN;
         }
         else if(this.§-!Y§ != §4$8§.§5"-§)
         {
            this.§%!`§ = NaN;
         }
         this.§-!Y§ = param1;
      }
      
      function §+#§(param1:int) : void
      {
         this.§>"i§ = param1;
      }
      
      function §`!6§(param1:Number) : void
      {
         this.§?!!§ = param1;
         if(isNaN(this.§"$9§) && this.§-!Y§ == §4$8§.§0E§)
         {
            this.§"$9§ = this.§?!!§;
         }
         if(isNaN(this.§%!`§) && this.§-!Y§ == §4$8§.§5"-§)
         {
            this.§%!`§ = this.§?!!§;
         }
      }
      
      function §3",§(param1:Number) : void
      {
         this.§"#K§ = param1;
      }
   }
}
