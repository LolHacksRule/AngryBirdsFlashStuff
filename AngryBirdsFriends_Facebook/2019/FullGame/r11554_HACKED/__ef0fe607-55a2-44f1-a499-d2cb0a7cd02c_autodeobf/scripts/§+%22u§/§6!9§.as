package §+"u§
{
   import §=!2§.§%"T§;
   
   public class §6!9§
   {
       
      
      private var §!!s§:Vector.<§?!d§>;
      
      private var §8!C§:String;
      
      private var §0!`§:String;
      
      private var §3!W§:Class;
      
      private var §<!S§:String = "";
      
      private var §#4§:Class;
      
      private var §9",§:Class;
      
      private var §>y§:Boolean;
      
      private var §,$1§:String;
      
      private var §-"s§:String;
      
      private var §"U§:String;
      
      private var §`L§:String;
      
      private var §`$ §:Class;
      
      private var §4#7§:Boolean = false;
      
      private var §&"N§:Array;
      
      private var § !>§:String;
      
      public var §%$3§:Boolean = true;
      
      public var §;&§:String;
      
      public function §6!9§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§8!C§ = param1;
         this.§3!W§ = param2;
         this.§,$1§ = param3;
         this.§-"s§ = param4;
         this.§>y§ = param5;
         this.§"U§ = param6;
      }
      
      public function get §2!Y§() : Class
      {
         return this.§3!W§;
      }
      
      public function get § case§() : Class
      {
         return this.§#4§;
      }
      
      public function set § case§(param1:Class) : void
      {
         this.§#4§ = param1;
      }
      
      public function get §"$<§() : Class
      {
         return this.§9",§;
      }
      
      public function set §"$<§(param1:Class) : void
      {
         this.§9",§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§<!S§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§<!S§ = param1;
      }
      
      public function get §[!C§() : Class
      {
         return this.§`$ §;
      }
      
      public function set §[!C§(param1:Class) : void
      {
         this.§`$ § = param1;
      }
      
      public function get §4"&§() : String
      {
         return this.§`L§;
      }
      
      public function set §4"&§(param1:String) : void
      {
         this.§`L§ = param1;
      }
      
      public function get §8$4§() : Boolean
      {
         return this.§4#7§;
      }
      
      public function set §8$4§(param1:Boolean) : void
      {
         this.§4#7§ = param1;
      }
      
      public function get §"!J§() : Array
      {
         return this.§&"N§;
      }
      
      public function set §"!J§(param1:Array) : void
      {
         this.§&"N§ = param1;
      }
      
      public function get background() : String
      {
         return this.§"U§;
      }
      
      public function set background(param1:String) : void
      {
         this.§"U§ = param1;
      }
      
      public function get §5#m§() : String
      {
         return this.§;&§;
      }
      
      public function get §9d§() : String
      {
         return this.§ !>§;
      }
      
      public function set §9d§(param1:String) : void
      {
         this.§ !>§ = param1;
      }
      
      public function get §1"5§() : String
      {
         return this.§8!C§;
      }
      
      public function set §1"5§(param1:String) : void
      {
         this.§8!C§ = param1;
      }
      
      public function get §+#X§() : String
      {
         return this.§0!`§;
      }
      
      public function set §+#X§(param1:String) : void
      {
         this.§0!`§ = param1;
      }
      
      public function get §&]§() : String
      {
         return this.§,$1§;
      }
      
      public function § `§(param1:String, param2:Class) : void
      {
         if(!this.§!!s§)
         {
            this.§!!s§ = new Vector.<§?!d§>();
         }
         this.§!!s§[this.§!!s§.length] = new §?!d§(param1,param2);
      }
      
      public function set §`§(param1:String) : void
      {
         this.§-"s§ = param1;
      }
      
      public function get §`§() : String
      {
         return this.§-"s§;
      }
      
      public function §"!N§() : void
      {
         var _loc1_:§?!d§ = null;
         for each(_loc1_ in this.§!!s§)
         {
            §%"T§.§>$<§.§1"x§(_loc1_.§-"u§,_loc1_.§;#^§);
         }
      }
      
      public function get §0!§() : Vector.<§?!d§>
      {
         return this.§!!s§.concat();
      }
      
      public function §5#Q§(param1:§6!9§) : void
      {
         var _loc2_:§?!d§ = null;
         for each(_loc2_ in param1.§0!§)
         {
            this.§ `§(_loc2_.§-"u§,_loc2_.§;#^§);
         }
      }
   }
}
