package §?a§
{
   import §4"D§.§^!]§;
   import §4"D§.formatString;
   import §9$§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §=!U§
   {
      
      private static var §5#e§:Matrix = new Matrix();
       
      
      private var §0#m§:int;
      
      private var §`!^§:Number;
      
      private var §?#h§:Number;
      
      private var §!"a§:Number;
      
      private var §%!k§:Number;
      
      private var §9#M§:int;
      
      private var §0#A§:String;
      
      private var §>F§:DisplayObject;
      
      private var §1!k§:Number;
      
      private var §!!K§:Number;
      
      private var §@"[§:Number;
      
      private var §>"m§:Number;
      
      private var §]<§:Number;
      
      private var §""b§:Number;
      
      private var §#"q§:Vector.<EventDispatcher>;
      
      public function §=!U§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§0#m§ = param1;
         this.§`!^§ = this.§!"a§ = param2;
         this.§?#h§ = this.§%!k§ = param3;
         this.§9#M§ = 0;
         this.§0#A§ = param4;
         this.§>F§ = param5;
         this.§>"m§ = this.§]<§ = this.§""b§ = 1;
         this.§#"q§ = new Vector.<EventDispatcher>(0);
         this.§try §();
      }
      
      public function §1"R§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§"i§(param1,§5#e§);
         return §^!]§.§>-§(§5#e§,this.§`!^§,this.§?#h§,param2);
      }
      
      public function §2#B§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§"i§(param1,§5#e§);
         return §^!]§.§>-§(§5#e§,this.§!"a§,this.§%!k§,param2);
      }
      
      public function §6"E§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§1"R§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§2#B§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §&"a§(param1:DisplayObject) : Boolean
      {
         return this.§#"q§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§0#m§,this.§`!^§,this.§?#h§,this.§0#A§);
      }
      
      public function clone() : §=!U§
      {
         var _loc1_:§=!U§ = new §=!U§(this.§0#m§,this.§`!^§,this.§?#h§,this.§0#A§,this.§>F§);
         _loc1_.§!"a§ = this.§!"a§;
         _loc1_.§%!k§ = this.§%!k§;
         _loc1_.§9#M§ = this.§9#M§;
         _loc1_.§1!k§ = this.§1!k§;
         _loc1_.§!!K§ = this.§!!K§;
         _loc1_.§>"m§ = this.§>"m§;
         _loc1_.§]<§ = this.§]<§;
         _loc1_.§""b§ = this.§""b§;
         return _loc1_;
      }
      
      private function §try §() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§>F§)
         {
            _loc1_ = 1;
            _loc2_ = this.§>F§;
            this.§#"q§.length = 1;
            this.§#"q§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§#"q§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§#"q§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§0#m§;
      }
      
      public function get globalX() : Number
      {
         return this.§`!^§;
      }
      
      public function get globalY() : Number
      {
         return this.§?#h§;
      }
      
      public function get §@#9§() : Number
      {
         return this.§!"a§;
      }
      
      public function get §9!4§() : Number
      {
         return this.§%!k§;
      }
      
      public function get §,$6§() : int
      {
         return this.§9#M§;
      }
      
      public function get phase() : String
      {
         return this.§0#A§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§>F§;
      }
      
      public function get timestamp() : Number
      {
         return this.§1!k§;
      }
      
      public function get § $-§() : Number
      {
         return this.§!!K§;
      }
      
      public function get §<"U§() : Number
      {
         return this.§@"[§;
      }
      
      public function get pressure() : Number
      {
         return this.§>"m§;
      }
      
      public function get width() : Number
      {
         return this.§]<§;
      }
      
      public function get height() : Number
      {
         return this.§""b§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§>F§)
         {
            param1.§2"=§(this.§#"q§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§#"q§.concat();
      }
      
      function §@"^§(param1:DisplayObject) : void
      {
         this.§>F§ = param1;
         this.§try §();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§!"a§ = this.§`!^§;
         this.§%!k§ = this.§?#h§;
         this.§`!^§ = param1;
         this.§?#h§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§]<§ = param1;
         this.§""b§ = param2;
      }
      
      function §6$&§(param1:String) : void
      {
         if(param1 != §2#n§.§"%§)
         {
            this.§!!K§ = NaN;
         }
         else if(this.§0#A§ != §2#n§.§"%§)
         {
            this.§@"[§ = NaN;
         }
         this.§0#A§ = param1;
      }
      
      function §2j§(param1:int) : void
      {
         this.§9#M§ = param1;
      }
      
      function §]#z§(param1:Number) : void
      {
         this.§1!k§ = param1;
         if(isNaN(this.§!!K§) && this.§0#A§ == §2#n§.§2X§)
         {
            this.§!!K§ = this.§1!k§;
         }
         if(isNaN(this.§@"[§) && this.§0#A§ == §2#n§.§"%§)
         {
            this.§@"[§ = this.§1!k§;
         }
      }
      
      function §7"j§(param1:Number) : void
      {
         this.§>"m§ = param1;
      }
   }
}
