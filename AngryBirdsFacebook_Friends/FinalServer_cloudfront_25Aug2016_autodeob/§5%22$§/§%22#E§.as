package §5"$§
{
   import §?§.§>"$§;
   
   public class §"#E§
   {
       
      
      private var §^$&§:Vector.<§^#I§>;
      
      private var §96§:String;
      
      private var §69§:String;
      
      private var §3!t§:Class;
      
      private var §+!c§:String = "";
      
      private var §&!;§:Class;
      
      private var §<#Q§:Class;
      
      private var §59§:Boolean;
      
      private var §5!w§:String;
      
      private var §""B§:String;
      
      private var §4!s§:String;
      
      private var §?">§:String;
      
      private var native:Class;
      
      private var §,-§:Boolean = false;
      
      private var §-n§:Array;
      
      private var §<r§:String;
      
      public var §8!F§:Boolean = true;
      
      public var §0!U§:String;
      
      public function §"#E§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§96§ = param1;
         this.§3!t§ = param2;
         this.§5!w§ = param3;
         this.§""B§ = param4;
         this.§59§ = param5;
         this.§4!s§ = param6;
      }
      
      public function get §##_§() : Boolean
      {
         return this.§59§;
      }
      
      public function set §##_§(param1:Boolean) : void
      {
         this.§59§ = param1;
      }
      
      public function get §"o§() : Class
      {
         return this.§3!t§;
      }
      
      public function get §=""§() : Class
      {
         return this.§&!;§;
      }
      
      public function set §=""§(param1:Class) : void
      {
         this.§&!;§ = param1;
      }
      
      public function get §+9§() : Class
      {
         return this.§<#Q§;
      }
      
      public function set §+9§(param1:Class) : void
      {
         this.§<#Q§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§+!c§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§+!c§ = param1;
      }
      
      public function get §=m§() : Class
      {
         return this.native;
      }
      
      public function set §=m§(param1:Class) : void
      {
         this.native = param1;
      }
      
      public function get §&#t§() : String
      {
         return this.§?">§;
      }
      
      public function set §&#t§(param1:String) : void
      {
         this.§?">§ = param1;
      }
      
      public function get §3#$§() : Boolean
      {
         return this.§,-§;
      }
      
      public function set §3#$§(param1:Boolean) : void
      {
         this.§,-§ = param1;
      }
      
      public function get §<§() : Array
      {
         return this.§-n§;
      }
      
      public function set §<§(param1:Array) : void
      {
         this.§-n§ = param1;
      }
      
      public function get background() : String
      {
         return this.§4!s§;
      }
      
      public function set background(param1:String) : void
      {
         this.§4!s§ = param1;
      }
      
      public function get §"#'§() : String
      {
         return this.§0!U§;
      }
      
      public function get §+G§() : String
      {
         return this.§<r§;
      }
      
      public function set §+G§(param1:String) : void
      {
         this.§<r§ = param1;
      }
      
      public function get §8!g§() : String
      {
         return this.§96§;
      }
      
      public function set §8!g§(param1:String) : void
      {
         this.§96§ = param1;
      }
      
      public function get §%#R§() : String
      {
         return this.§69§;
      }
      
      public function set §%#R§(param1:String) : void
      {
         this.§69§ = param1;
      }
      
      public function get §5Y§() : String
      {
         return this.§5!w§;
      }
      
      public function §3!^§(param1:String, param2:Class) : void
      {
         if(!this.§^$&§)
         {
            this.§^$&§ = new Vector.<§^#I§>();
         }
         this.§^$&§[this.§^$&§.length] = new §^#I§(param1,param2);
      }
      
      public function set §[!#§(param1:String) : void
      {
         this.§""B§ = param1;
      }
      
      public function get §[!#§() : String
      {
         return this.§""B§;
      }
      
      public function §0$'§() : void
      {
         var _loc1_:§^#I§ = null;
         for each(_loc1_ in this.§^$&§)
         {
            §>"$§.§<_§.§#"o§(_loc1_.§4#E§,_loc1_.§?!H§);
         }
      }
      
      public function get §;#?§() : Vector.<§^#I§>
      {
         return this.§^$&§.concat();
      }
      
      public function §7!4§(param1:§"#E§) : void
      {
         var _loc2_:§^#I§ = null;
         for each(_loc2_ in param1.§;#?§)
         {
            this.§3!^§(_loc2_.§4#E§,_loc2_.§?!H§);
         }
      }
   }
}
