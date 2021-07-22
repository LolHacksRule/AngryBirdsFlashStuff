package §<!r§
{
   import §`#@§.§7n§;
   
   public class §]_§
   {
       
      
      private var §6m§:Vector.<§9#8§>;
      
      private var §'#t§:String;
      
      private var §-";§:String;
      
      private var §`#n§:Class;
      
      private var § !G§:String = "";
      
      private var §8$ §:Class;
      
      private var §2O§:Class;
      
      private var §-!?§:Boolean;
      
      private var §'!]§:String;
      
      private var §-!9§:String;
      
      private var §#[§:String;
      
      private var §3!>§:String;
      
      private var §-"d§:Class;
      
      private var §<"d§:Boolean = false;
      
      private var §>#9§:Array;
      
      private var §]#o§:String;
      
      public var §'X§:Boolean = true;
      
      public var §@!;§:String;
      
      public function §]_§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§'#t§ = param1;
         this.§`#n§ = param2;
         this.§'!]§ = param3;
         this.§-!9§ = param4;
         this.§-!?§ = param5;
         this.§#[§ = param6;
      }
      
      public function get §+$?§() : Class
      {
         return this.§`#n§;
      }
      
      public function get §7"5§() : Class
      {
         return this.§8$ §;
      }
      
      public function set §7"5§(param1:Class) : void
      {
         this.§8$ § = param1;
      }
      
      public function get §"!@§() : Class
      {
         return this.§2O§;
      }
      
      public function set §"!@§(param1:Class) : void
      {
         this.§2O§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§ !G§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§ !G§ = param1;
      }
      
      public function get §-g§() : Class
      {
         return this.§-"d§;
      }
      
      public function set §-g§(param1:Class) : void
      {
         this.§-"d§ = param1;
      }
      
      public function get §`t§() : String
      {
         return this.§3!>§;
      }
      
      public function set §`t§(param1:String) : void
      {
         this.§3!>§ = param1;
      }
      
      public function get §1$;§() : Boolean
      {
         return this.§<"d§;
      }
      
      public function set §1$;§(param1:Boolean) : void
      {
         this.§<"d§ = param1;
      }
      
      public function get §;##§() : Array
      {
         return this.§>#9§;
      }
      
      public function set §;##§(param1:Array) : void
      {
         this.§>#9§ = param1;
      }
      
      public function get background() : String
      {
         return this.§#[§;
      }
      
      public function set background(param1:String) : void
      {
         this.§#[§ = param1;
      }
      
      public function get §[#4§() : String
      {
         return this.§@!;§;
      }
      
      public function get §3V§() : String
      {
         return this.§]#o§;
      }
      
      public function set §3V§(param1:String) : void
      {
         this.§]#o§ = param1;
      }
      
      public function get §=k§() : String
      {
         return this.§'#t§;
      }
      
      public function set §=k§(param1:String) : void
      {
         this.§'#t§ = param1;
      }
      
      public function get §3"j§() : String
      {
         return this.§-";§;
      }
      
      public function set §3"j§(param1:String) : void
      {
         this.§-";§ = param1;
      }
      
      public function get §?!'§() : String
      {
         return this.§'!]§;
      }
      
      public function §@p§(param1:String, param2:Class) : void
      {
         if(!this.§6m§)
         {
            this.§6m§ = new Vector.<§9#8§>();
         }
         this.§6m§[this.§6m§.length] = new §9#8§(param1,param2);
      }
      
      public function set §5!5§(param1:String) : void
      {
         this.§-!9§ = param1;
      }
      
      public function get §5!5§() : String
      {
         return this.§-!9§;
      }
      
      public function §`"n§() : void
      {
         var _loc1_:§9#8§ = null;
         for each(_loc1_ in this.§6m§)
         {
            §7n§.§-$<§.§["e§(_loc1_.§[!6§,_loc1_.§^" §);
         }
      }
      
      public function get §[#V§() : Vector.<§9#8§>
      {
         return this.§6m§.concat();
      }
      
      public function §%>§(param1:§]_§) : void
      {
         var _loc2_:§9#8§ = null;
         for each(_loc2_ in param1.§[#V§)
         {
            this.§@p§(_loc2_.§[!6§,_loc2_.§^" §);
         }
      }
   }
}
