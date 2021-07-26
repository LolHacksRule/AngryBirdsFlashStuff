package §`,§
{
   import §?#z§.§]$?§;
   
   public class §'#t§
   {
       
      
      private var §+#6§:Vector.<§4!M§>;
      
      private var §^j§:String;
      
      private var §2#P§:String;
      
      private var §]!S§:Class;
      
      private var §'!z§:String = "";
      
      private var §1#u§:Class;
      
      private var §[!^§:Class;
      
      private var §85§:Boolean;
      
      private var §5#c§:String;
      
      private var §9#]§:String;
      
      private var §8"A§:String;
      
      private var §["I§:String;
      
      private var §9#g§:Class;
      
      private var §7"^§:Boolean = false;
      
      private var §&#0§:Array;
      
      private var §`#L§:String;
      
      public var §4$<§:Boolean = true;
      
      public var §#"y§:String;
      
      public function §'#t§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§^j§ = param1;
         this.§]!S§ = param2;
         this.§5#c§ = param3;
         this.§9#]§ = param4;
         this.§85§ = param5;
         this.§8"A§ = param6;
      }
      
      public function get §6$§() : Class
      {
         return this.§]!S§;
      }
      
      public function get §1H§() : Class
      {
         return this.§1#u§;
      }
      
      public function set §1H§(param1:Class) : void
      {
         this.§1#u§ = param1;
      }
      
      public function get §4U§() : Class
      {
         return this.§[!^§;
      }
      
      public function set §4U§(param1:Class) : void
      {
         this.§[!^§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§'!z§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§'!z§ = param1;
      }
      
      public function get §@$,§() : Class
      {
         return this.§9#g§;
      }
      
      public function set §@$,§(param1:Class) : void
      {
         this.§9#g§ = param1;
      }
      
      public function get §?"a§() : String
      {
         return this.§["I§;
      }
      
      public function set §?"a§(param1:String) : void
      {
         this.§["I§ = param1;
      }
      
      public function get §,]§() : Boolean
      {
         return this.§7"^§;
      }
      
      public function set §,]§(param1:Boolean) : void
      {
         this.§7"^§ = param1;
      }
      
      public function get §3!K§() : Array
      {
         return this.§&#0§;
      }
      
      public function set §3!K§(param1:Array) : void
      {
         this.§&#0§ = param1;
      }
      
      public function get background() : String
      {
         return this.§8"A§;
      }
      
      public function set background(param1:String) : void
      {
         this.§8"A§ = param1;
      }
      
      public function get §9!c§() : String
      {
         return this.§#"y§;
      }
      
      public function get §"">§() : String
      {
         return this.§`#L§;
      }
      
      public function set §"">§(param1:String) : void
      {
         this.§`#L§ = param1;
      }
      
      public function get §!#g§() : String
      {
         return this.§^j§;
      }
      
      public function set §!#g§(param1:String) : void
      {
         this.§^j§ = param1;
      }
      
      public function get §6!D§() : String
      {
         return this.§2#P§;
      }
      
      public function set §6!D§(param1:String) : void
      {
         this.§2#P§ = param1;
      }
      
      public function get §&#7§() : String
      {
         return this.§5#c§;
      }
      
      public function §-"7§(param1:String, param2:Class) : void
      {
         if(!this.§+#6§)
         {
            this.§+#6§ = new Vector.<§4!M§>();
         }
         this.§+#6§[this.§+#6§.length] = new §4!M§(param1,param2);
      }
      
      public function set §5"3§(param1:String) : void
      {
         this.§9#]§ = param1;
      }
      
      public function get §5"3§() : String
      {
         return this.§9#]§;
      }
      
      public function §>!5§() : void
      {
         var _loc1_:§4!M§ = null;
         for each(_loc1_ in this.§+#6§)
         {
            §]$?§.§;u§.§,m§(_loc1_.§6"6§,_loc1_.§#&§);
         }
      }
      
      public function get §=!A§() : Vector.<§4!M§>
      {
         return this.§+#6§.concat();
      }
      
      public function §%X§(param1:§'#t§) : void
      {
         var _loc2_:§4!M§ = null;
         for each(_loc2_ in param1.§=!A§)
         {
            this.§-"7§(_loc2_.§6"6§,_loc2_.§#&§);
         }
      }
   }
}
