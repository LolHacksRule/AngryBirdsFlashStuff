package §5#m§
{
   import §5!D§.§[!b§;
   import §5!D§.formatString;
   import §^"S§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,o§
   {
      
      private static var §5#^§:Matrix = new Matrix();
       
      
      private var §^"5§:int;
      
      private var §8f§:Number;
      
      private var §%!F§:Number;
      
      private var §#$=§:Number;
      
      private var §<n§:Number;
      
      private var § #o§:int;
      
      private var §="U§:String;
      
      private var §%"P§:DisplayObject;
      
      private var §2#Z§:Number;
      
      private var §4V§:Number;
      
      private var §<!q§:Number;
      
      private var §%!B§:Number;
      
      private var §4"V§:Number;
      
      private var §""&§:Number;
      
      private var §4#t§:Vector.<EventDispatcher>;
      
      public function §,o§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§^"5§ = param1;
         this.§8f§ = this.§#$=§ = param2;
         this.§%!F§ = this.§<n§ = param3;
         this.§ #o§ = 0;
         this.§="U§ = param4;
         this.§%"P§ = param5;
         this.§%!B§ = this.§4"V§ = this.§""&§ = 1;
         this.§4#t§ = new Vector.<EventDispatcher>(0);
         this.§1!f§();
      }
      
      public function §+"Q§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§3[§(param1,§5#^§);
         return §[!b§.§<§(§5#^§,this.§8f§,this.§%!F§,param2);
      }
      
      public function §?z§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§3[§(param1,§5#^§);
         return §[!b§.§<§(§5#^§,this.§#$=§,this.§<n§,param2);
      }
      
      public function §`'§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§+"Q§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§?z§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §-#n§(param1:DisplayObject) : Boolean
      {
         return this.§4#t§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§^"5§,this.§8f§,this.§%!F§,this.§="U§);
      }
      
      public function clone() : §,o§
      {
         var _loc1_:§,o§ = new §,o§(this.§^"5§,this.§8f§,this.§%!F§,this.§="U§,this.§%"P§);
         _loc1_.§#$=§ = this.§#$=§;
         _loc1_.§<n§ = this.§<n§;
         _loc1_.§ #o§ = this.§ #o§;
         _loc1_.§2#Z§ = this.§2#Z§;
         _loc1_.§4V§ = this.§4V§;
         _loc1_.§%!B§ = this.§%!B§;
         _loc1_.§4"V§ = this.§4"V§;
         _loc1_.§""&§ = this.§""&§;
         return _loc1_;
      }
      
      private function §1!f§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§%"P§)
         {
            _loc1_ = 1;
            _loc2_ = this.§%"P§;
            this.§4#t§.length = 1;
            this.§4#t§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§4#t§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§4#t§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§^"5§;
      }
      
      public function get globalX() : Number
      {
         return this.§8f§;
      }
      
      public function get globalY() : Number
      {
         return this.§%!F§;
      }
      
      public function get §&"w§() : Number
      {
         return this.§#$=§;
      }
      
      public function get §2#5§() : Number
      {
         return this.§<n§;
      }
      
      public function get §&!;§() : int
      {
         return this.§ #o§;
      }
      
      public function get phase() : String
      {
         return this.§="U§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§%"P§;
      }
      
      public function get timestamp() : Number
      {
         return this.§2#Z§;
      }
      
      public function get §+!H§() : Number
      {
         return this.§4V§;
      }
      
      public function get §<P§() : Number
      {
         return this.§<!q§;
      }
      
      public function get pressure() : Number
      {
         return this.§%!B§;
      }
      
      public function get width() : Number
      {
         return this.§4"V§;
      }
      
      public function get height() : Number
      {
         return this.§""&§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§%"P§)
         {
            param1.§9m§(this.§4#t§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§4#t§.concat();
      }
      
      function §<"v§(param1:DisplayObject) : void
      {
         this.§%"P§ = param1;
         this.§1!f§();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§#$=§ = this.§8f§;
         this.§<n§ = this.§%!F§;
         this.§8f§ = param1;
         this.§%!F§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§4"V§ = param1;
         this.§""&§ = param2;
      }
      
      function §8"q§(param1:String) : void
      {
         if(param1 != §6a§.§-#<§)
         {
            this.§4V§ = NaN;
         }
         else if(this.§="U§ != §6a§.§-#<§)
         {
            this.§<!q§ = NaN;
         }
         this.§="U§ = param1;
      }
      
      function §#"F§(param1:int) : void
      {
         this.§ #o§ = param1;
      }
      
      function § M§(param1:Number) : void
      {
         this.§2#Z§ = param1;
         if(isNaN(this.§4V§) && this.§="U§ == §6a§.§+#Q§)
         {
            this.§4V§ = this.§2#Z§;
         }
         if(isNaN(this.§<!q§) && this.§="U§ == §6a§.§-#<§)
         {
            this.§<!q§ = this.§2#Z§;
         }
      }
      
      function §<">§(param1:Number) : void
      {
         this.§%!B§ = param1;
      }
   }
}
