package §,$&§
{
   import §,#e§.DisplayObject;
   import §8#p§.§"_§;
   import §8#p§.formatString;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4"i§
   {
      
      private static var §>"P§:Matrix = new Matrix();
       
      
      private var §&"]§:int;
      
      private var §9!r§:Number;
      
      private var §1!k§:Number;
      
      private var §#""§:Number;
      
      private var §%!e§:Number;
      
      private var §<$1§:int;
      
      private var §9"e§:String;
      
      private var §["8§:DisplayObject;
      
      private var §4#6§:Number;
      
      private var §;1§:Number;
      
      private var §`Q§:Number;
      
      private var §[!K§:Number;
      
      private var §>"h§:Number;
      
      private var §"#G§:Number;
      
      private var §-8§:Vector.<EventDispatcher>;
      
      public function §4"i§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§&"]§ = param1;
         this.§9!r§ = this.§#""§ = param2;
         this.§1!k§ = this.§%!e§ = param3;
         this.§<$1§ = 0;
         this.§9"e§ = param4;
         this.§["8§ = param5;
         this.§[!K§ = this.§>"h§ = this.§"#G§ = 1;
         this.§-8§ = new Vector.<EventDispatcher>(0);
         this.§,#Z§();
      }
      
      public function §5"+§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§0#n§(param1,§>"P§);
         return §"_§.§>U§(§>"P§,this.§9!r§,this.§1!k§,param2);
      }
      
      public function §^#u§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§0#n§(param1,§>"P§);
         return §"_§.§>U§(§>"P§,this.§#""§,this.§%!e§,param2);
      }
      
      public function §7$7§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§5"+§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§^#u§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §-" §(param1:DisplayObject) : Boolean
      {
         return this.§-8§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§&"]§,this.§9!r§,this.§1!k§,this.§9"e§);
      }
      
      public function clone() : §4"i§
      {
         var _loc1_:§4"i§ = new §4"i§(this.§&"]§,this.§9!r§,this.§1!k§,this.§9"e§,this.§["8§);
         _loc1_.§#""§ = this.§#""§;
         _loc1_.§%!e§ = this.§%!e§;
         _loc1_.§<$1§ = this.§<$1§;
         _loc1_.§4#6§ = this.§4#6§;
         _loc1_.§;1§ = this.§;1§;
         _loc1_.§[!K§ = this.§[!K§;
         _loc1_.§>"h§ = this.§>"h§;
         _loc1_.§"#G§ = this.§"#G§;
         return _loc1_;
      }
      
      private function §,#Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§["8§)
         {
            _loc1_ = 1;
            _loc2_ = this.§["8§;
            this.§-8§.length = 1;
            this.§-8§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§-8§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§-8§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§&"]§;
      }
      
      public function get globalX() : Number
      {
         return this.§9!r§;
      }
      
      public function get globalY() : Number
      {
         return this.§1!k§;
      }
      
      public function get §%!3§() : Number
      {
         return this.§#""§;
      }
      
      public function get §'#g§() : Number
      {
         return this.§%!e§;
      }
      
      public function get §5-§() : int
      {
         return this.§<$1§;
      }
      
      public function get phase() : String
      {
         return this.§9"e§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§["8§;
      }
      
      public function get timestamp() : Number
      {
         return this.§4#6§;
      }
      
      public function get §1!<§() : Number
      {
         return this.§;1§;
      }
      
      public function get § #Y§() : Number
      {
         return this.§`Q§;
      }
      
      public function get pressure() : Number
      {
         return this.§[!K§;
      }
      
      public function get width() : Number
      {
         return this.§>"h§;
      }
      
      public function get height() : Number
      {
         return this.§"#G§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§["8§)
         {
            param1.§'!I§(this.§-8§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§-8§.concat();
      }
      
      function §'2§(param1:DisplayObject) : void
      {
         this.§["8§ = param1;
         this.§,#Z§();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§#""§ = this.§9!r§;
         this.§%!e§ = this.§1!k§;
         this.§9!r§ = param1;
         this.§1!k§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§>"h§ = param1;
         this.§"#G§ = param2;
      }
      
      function §7Z§(param1:String) : void
      {
         if(param1 != §-"E§.§<"V§)
         {
            this.§;1§ = NaN;
         }
         else if(this.§9"e§ != §-"E§.§<"V§)
         {
            this.§`Q§ = NaN;
         }
         this.§9"e§ = param1;
      }
      
      function §9"i§(param1:int) : void
      {
         this.§<$1§ = param1;
      }
      
      function §^E§(param1:Number) : void
      {
         this.§4#6§ = param1;
         if(isNaN(this.§;1§) && this.§9"e§ == §-"E§.§@"Y§)
         {
            this.§;1§ = this.§4#6§;
         }
         if(isNaN(this.§`Q§) && this.§9"e§ == §-"E§.§<"V§)
         {
            this.§`Q§ = this.§4#6§;
         }
      }
      
      function §'!x§(param1:Number) : void
      {
         this.§[!K§ = param1;
      }
   }
}
