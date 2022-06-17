package §4#$§
{
   import §+!n§.§+!p§;
   
   public class §6#!§
   {
       
      
      private var §"#y§:Vector.<§5Y§>;
      
      private var §`%§:String;
      
      private var §##Y§:String;
      
      private var §`!y§:Class;
      
      private var §;!0§:String = "";
      
      private var §&"z§:Class;
      
      private var §-D§:Class;
      
      private var §=#R§:Boolean;
      
      private var §#p§:String;
      
      private var §@$3§:String;
      
      private var §>"l§:String;
      
      private var §4$#§:String;
      
      private var §&!I§:Class;
      
      private var §#!<§:Boolean = false;
      
      private var §>!q§:Array;
      
      private var §>$6§:String;
      
      public var §6"w§:Boolean = true;
      
      public var §&!Q§:String;
      
      public function §6#!§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§`%§ = param1;
         this.§`!y§ = param2;
         this.§#p§ = param3;
         this.§@$3§ = param4;
         this.§=#R§ = param5;
         this.§>"l§ = param6;
      }
      
      public function get §7!W§() : Class
      {
         return this.§`!y§;
      }
      
      public function get §!"A§() : Class
      {
         return this.§&"z§;
      }
      
      public function set §!"A§(param1:Class) : void
      {
         this.§&"z§ = param1;
      }
      
      public function get §@!n§() : Class
      {
         return this.§-D§;
      }
      
      public function set §@!n§(param1:Class) : void
      {
         this.§-D§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§;!0§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§;!0§ = param1;
      }
      
      public function get §0$E§() : Class
      {
         return this.§&!I§;
      }
      
      public function set §0$E§(param1:Class) : void
      {
         this.§&!I§ = param1;
      }
      
      public function get §=!-§() : String
      {
         return this.§4$#§;
      }
      
      public function set §=!-§(param1:String) : void
      {
         this.§4$#§ = param1;
      }
      
      public function get §"!u§() : Boolean
      {
         return this.§#!<§;
      }
      
      public function set §"!u§(param1:Boolean) : void
      {
         this.§#!<§ = param1;
      }
      
      public function get §1!$§() : Array
      {
         return this.§>!q§;
      }
      
      public function set §1!$§(param1:Array) : void
      {
         this.§>!q§ = param1;
      }
      
      public function get background() : String
      {
         return this.§>"l§;
      }
      
      public function set background(param1:String) : void
      {
         this.§>"l§ = param1;
      }
      
      public function get §11§() : String
      {
         return this.§&!Q§;
      }
      
      public function get §,d§() : String
      {
         return this.§>$6§;
      }
      
      public function set §,d§(param1:String) : void
      {
         this.§>$6§ = param1;
      }
      
      public function get §1!>§() : String
      {
         return this.§`%§;
      }
      
      public function set §1!>§(param1:String) : void
      {
         this.§`%§ = param1;
      }
      
      public function get §^!K§() : String
      {
         return this.§##Y§;
      }
      
      public function set §^!K§(param1:String) : void
      {
         this.§##Y§ = param1;
      }
      
      public function get §%#Y§() : String
      {
         return this.§#p§;
      }
      
      public function § !q§(param1:String, param2:Class) : void
      {
         if(!this.§"#y§)
         {
            this.§"#y§ = new Vector.<§5Y§>();
         }
         this.§"#y§[this.§"#y§.length] = new §5Y§(param1,param2);
      }
      
      public function set §2"w§(param1:String) : void
      {
         this.§@$3§ = param1;
      }
      
      public function get §2"w§() : String
      {
         return this.§@$3§;
      }
      
      public function §["$§() : void
      {
         var _loc1_:§5Y§ = null;
         for each(_loc1_ in this.§"#y§)
         {
            §+!p§.§;"-§.§""u§(_loc1_.§'"F§,_loc1_.§^"&§);
         }
      }
      
      public function get §1!Z§() : Vector.<§5Y§>
      {
         return this.§"#y§.concat();
      }
      
      public function §7"h§(param1:§6#!§) : void
      {
         var _loc2_:§5Y§ = null;
         for each(_loc2_ in param1.§1!Z§)
         {
            this.§ !q§(_loc2_.§'"F§,_loc2_.§^"&§);
         }
      }
   }
}
