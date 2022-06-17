package §!#`§
{
   import §!6§.DisplayObject;
   import §#"l§.§<#^§;
   import §#"l§.formatString;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §^"e§
   {
      
      private static var §0$-§:Matrix = new Matrix();
       
      
      private var §5"y§:int;
      
      private var §#T§:Number;
      
      private var §<#$§:Number;
      
      private var §'"d§:Number;
      
      private var §-#;§:Number;
      
      private var §3v§:int;
      
      private var §&d§:String;
      
      private var §[! §:DisplayObject;
      
      private var §7!j§:Number;
      
      private var §"D§:Number;
      
      private var §;"U§:Number;
      
      private var §,"'§:Number;
      
      private var §@#Z§:Number;
      
      private var §+#j§:Number;
      
      private var §?"M§:Vector.<EventDispatcher>;
      
      public function §^"e§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§5"y§ = param1;
         this.§#T§ = this.§'"d§ = param2;
         this.§<#$§ = this.§-#;§ = param3;
         this.§3v§ = 0;
         this.§&d§ = param4;
         this.§[! § = param5;
         this.§,"'§ = this.§@#Z§ = this.§+#j§ = 1;
         this.§?"M§ = new Vector.<EventDispatcher>(0);
         this.§-#"§();
      }
      
      public function §?$=§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§!"?§(param1,§0$-§);
         return §<#^§.§-!>§(§0$-§,this.§#T§,this.§<#$§,param2);
      }
      
      public function §9#2§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         param1.base.§!"?§(param1,§0$-§);
         return §<#^§.§-!>§(§0$-§,this.§'"d§,this.§-#;§,param2);
      }
      
      public function §8"y§(param1:DisplayObject, param2:Point = null) : Point
      {
         if(param2 == null)
         {
            param2 = new Point();
         }
         this.§?$=§(param1,param2);
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         this.§9#2§(param1,param2);
         param2.setTo(_loc3_ - param2.x,_loc4_ - param2.y);
         return param2;
      }
      
      public function §9P§(param1:DisplayObject) : Boolean
      {
         return this.§?"M§.indexOf(param1) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.§5"y§,this.§#T§,this.§<#$§,this.§&d§);
      }
      
      public function clone() : §^"e§
      {
         var _loc1_:§^"e§ = new §^"e§(this.§5"y§,this.§#T§,this.§<#$§,this.§&d§,this.§[! §);
         _loc1_.§'"d§ = this.§'"d§;
         _loc1_.§-#;§ = this.§-#;§;
         _loc1_.§3v§ = this.§3v§;
         _loc1_.§7!j§ = this.§7!j§;
         _loc1_.§"D§ = this.§"D§;
         _loc1_.§,"'§ = this.§,"'§;
         _loc1_.§@#Z§ = this.§@#Z§;
         _loc1_.§+#j§ = this.§+#j§;
         return _loc1_;
      }
      
      private function §-#"§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(this.§[! §)
         {
            _loc1_ = 1;
            _loc2_ = this.§[! §;
            this.§?"M§.length = 1;
            this.§?"M§[0] = _loc2_;
            while((_loc2_ = _loc2_.parent) != null)
            {
               this.§?"M§[int(_loc1_++)] = _loc2_;
            }
         }
         else
         {
            this.§?"M§.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.§5"y§;
      }
      
      public function get globalX() : Number
      {
         return this.§#T§;
      }
      
      public function get globalY() : Number
      {
         return this.§<#$§;
      }
      
      public function get §',§() : Number
      {
         return this.§'"d§;
      }
      
      public function get §5!1§() : Number
      {
         return this.§-#;§;
      }
      
      public function get §;$-§() : int
      {
         return this.§3v§;
      }
      
      public function get phase() : String
      {
         return this.§&d§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§[! §;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!j§;
      }
      
      public function get §]!<§() : Number
      {
         return this.§"D§;
      }
      
      public function get §#$9§() : Number
      {
         return this.§;"U§;
      }
      
      public function get pressure() : Number
      {
         return this.§,"'§;
      }
      
      public function get width() : Number
      {
         return this.§@#Z§;
      }
      
      public function get height() : Number
      {
         return this.§+#j§;
      }
      
      function dispatchEvent(param1:TouchEvent) : void
      {
         if(this.§[! §)
         {
            param1.§1#6§(this.§?"M§);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.§?"M§.concat();
      }
      
      function §3#I§(param1:DisplayObject) : void
      {
         this.§[! § = param1;
         this.§-#"§();
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§'"d§ = this.§#T§;
         this.§-#;§ = this.§<#$§;
         this.§#T§ = param1;
         this.§<#$§ = param2;
      }
      
      function setSize(param1:Number, param2:Number) : void
      {
         this.§@#Z§ = param1;
         this.§+#j§ = param2;
      }
      
      function §6";§(param1:String) : void
      {
         if(param1 != §"$D§.§in §)
         {
            this.§"D§ = NaN;
         }
         else if(this.§&d§ != §"$D§.§in §)
         {
            this.§;"U§ = NaN;
         }
         this.§&d§ = param1;
      }
      
      function §'#q§(param1:int) : void
      {
         this.§3v§ = param1;
      }
      
      function §7#&§(param1:Number) : void
      {
         this.§7!j§ = param1;
         if(isNaN(this.§"D§) && this.§&d§ == §"$D§.§<#B§)
         {
            this.§"D§ = this.§7!j§;
         }
         if(isNaN(this.§;"U§) && this.§&d§ == §"$D§.§in §)
         {
            this.§;"U§ = this.§7!j§;
         }
      }
      
      function §%#<§(param1:Number) : void
      {
         this.§,"'§ = param1;
      }
   }
}
