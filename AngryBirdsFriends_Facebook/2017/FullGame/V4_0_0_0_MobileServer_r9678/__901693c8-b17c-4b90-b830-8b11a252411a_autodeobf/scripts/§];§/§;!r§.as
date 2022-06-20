package §];§
{
   import §6"r§.§!#A§;
   
   public class §;!r§
   {
       
      
      private var §1!d§:Vector.<§?!g§>;
      
      private var § ;§:String;
      
      private var §9b§:String;
      
      private var §6$>§:Class;
      
      private var §4"s§:String = "";
      
      private var §7!z§:Class;
      
      private var §^!G§:Class;
      
      private var §[!L§:Boolean;
      
      private var §[#'§:String;
      
      private var §1#Q§:String;
      
      private var §2!q§:String;
      
      private var §2"-§:String;
      
      private var §="4§:Class;
      
      private var §7!g§:Boolean = false;
      
      private var §?#u§:Array;
      
      private var §!S§:String;
      
      public var §>]§:Boolean = true;
      
      public var §,![§:String;
      
      public function §;!r§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§ ;§ = param1;
         this.§6$>§ = param2;
         this.§[#'§ = param3;
         this.§1#Q§ = param4;
         this.§[!L§ = param5;
         this.§2!q§ = param6;
      }
      
      public function get §8!g§() : Class
      {
         return this.§6$>§;
      }
      
      public function get §@"8§() : Class
      {
         return this.§7!z§;
      }
      
      public function set §@"8§(param1:Class) : void
      {
         this.§7!z§ = param1;
      }
      
      public function get §8!V§() : Class
      {
         return this.§^!G§;
      }
      
      public function set §8!V§(param1:Class) : void
      {
         this.§^!G§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§4"s§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§4"s§ = param1;
      }
      
      public function get §@I§() : Class
      {
         return this.§="4§;
      }
      
      public function set §@I§(param1:Class) : void
      {
         this.§="4§ = param1;
      }
      
      public function get §[!1§() : String
      {
         return this.§2"-§;
      }
      
      public function set §[!1§(param1:String) : void
      {
         this.§2"-§ = param1;
      }
      
      public function get §#L§() : Boolean
      {
         return this.§7!g§;
      }
      
      public function set §#L§(param1:Boolean) : void
      {
         this.§7!g§ = param1;
      }
      
      public function get §7#R§() : Array
      {
         return this.§?#u§;
      }
      
      public function set §7#R§(param1:Array) : void
      {
         this.§?#u§ = param1;
      }
      
      public function get background() : String
      {
         return this.§2!q§;
      }
      
      public function set background(param1:String) : void
      {
         this.§2!q§ = param1;
      }
      
      public function get §%#I§() : String
      {
         return this.§,![§;
      }
      
      public function get §@!l§() : String
      {
         return this.§!S§;
      }
      
      public function set §@!l§(param1:String) : void
      {
         this.§!S§ = param1;
      }
      
      public function get §2"N§() : String
      {
         return this.§ ;§;
      }
      
      public function set §2"N§(param1:String) : void
      {
         this.§ ;§ = param1;
      }
      
      public function get §2Y§() : String
      {
         return this.§9b§;
      }
      
      public function set §2Y§(param1:String) : void
      {
         this.§9b§ = param1;
      }
      
      public function get §8"q§() : String
      {
         return this.§[#'§;
      }
      
      public function §7"-§(param1:String, param2:Class) : void
      {
         if(!this.§1!d§)
         {
            this.§1!d§ = new Vector.<§?!g§>();
         }
         this.§1!d§[this.§1!d§.length] = new §?!g§(param1,param2);
      }
      
      public function set §2!N§(param1:String) : void
      {
         this.§1#Q§ = param1;
      }
      
      public function get §2!N§() : String
      {
         return this.§1#Q§;
      }
      
      public function §"!f§() : void
      {
         var _loc1_:§?!g§ = null;
         for each(_loc1_ in this.§1!d§)
         {
            §!#A§.§>q§.§-"J§(_loc1_.§8$!§,_loc1_.§'$+§);
         }
      }
      
      public function get §6"j§() : Vector.<§?!g§>
      {
         return this.§1!d§.concat();
      }
      
      public function §[!m§(param1:§;!r§) : void
      {
         var _loc2_:§?!g§ = null;
         for each(_loc2_ in param1.§6"j§)
         {
            this.§7"-§(_loc2_.§8$!§,_loc2_.§'$+§);
         }
      }
   }
}
