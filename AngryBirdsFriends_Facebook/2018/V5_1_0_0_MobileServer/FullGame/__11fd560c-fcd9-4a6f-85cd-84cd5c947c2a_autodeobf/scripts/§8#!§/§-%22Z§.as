package §8#!§
{
   import §;#D§.§3#U§;
   
   public class §-"Z§
   {
       
      
      private var §4-§:Vector.<§4"a§>;
      
      private var §7!D§:String;
      
      private var §`R§:String;
      
      private var §#"M§:Class;
      
      private var §1#k§:String = "";
      
      private var §5!X§:Class;
      
      private var §&#K§:Class;
      
      private var §`"A§:Boolean;
      
      private var §-!^§:String;
      
      private var §="w§:String;
      
      private var §3!X§:String;
      
      private var §?"`§:String;
      
      private var §]#V§:Class;
      
      private var §1"Q§:Boolean = false;
      
      private var §?H§:Array;
      
      private var §"$=§:String;
      
      public var §5!d§:Boolean = true;
      
      public var §`$5§:String;
      
      public function §-"Z§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean, param6:String = "")
      {
         super();
         this.§7!D§ = param1;
         this.§#"M§ = param2;
         this.§-!^§ = param3;
         this.§="w§ = param4;
         this.§`"A§ = param5;
         this.§3!X§ = param6;
      }
      
      public function get §="7§() : Class
      {
         return this.§#"M§;
      }
      
      public function get §2!c§() : Class
      {
         return this.§5!X§;
      }
      
      public function set §2!c§(param1:Class) : void
      {
         this.§5!X§ = param1;
      }
      
      public function get §!5§() : Class
      {
         return this.§&#K§;
      }
      
      public function set §!5§(param1:Class) : void
      {
         this.§&#K§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§1#k§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§1#k§ = param1;
      }
      
      public function get §0"e§() : Class
      {
         return this.§]#V§;
      }
      
      public function set §0"e§(param1:Class) : void
      {
         this.§]#V§ = param1;
      }
      
      public function get § else§() : String
      {
         return this.§?"`§;
      }
      
      public function set § else§(param1:String) : void
      {
         this.§?"`§ = param1;
      }
      
      public function get § #F§() : Boolean
      {
         return this.§1"Q§;
      }
      
      public function set § #F§(param1:Boolean) : void
      {
         this.§1"Q§ = param1;
      }
      
      public function get §`U§() : Array
      {
         return this.§?H§;
      }
      
      public function set §`U§(param1:Array) : void
      {
         this.§?H§ = param1;
      }
      
      public function get background() : String
      {
         return this.§3!X§;
      }
      
      public function set background(param1:String) : void
      {
         this.§3!X§ = param1;
      }
      
      public function get §6$3§() : String
      {
         return this.§`$5§;
      }
      
      public function get §7"4§() : String
      {
         return this.§"$=§;
      }
      
      public function set §7"4§(param1:String) : void
      {
         this.§"$=§ = param1;
      }
      
      public function get §8s§() : String
      {
         return this.§7!D§;
      }
      
      public function set §8s§(param1:String) : void
      {
         this.§7!D§ = param1;
      }
      
      public function get §5#-§() : String
      {
         return this.§`R§;
      }
      
      public function set §5#-§(param1:String) : void
      {
         this.§`R§ = param1;
      }
      
      public function get §,#!§() : String
      {
         return this.§-!^§;
      }
      
      public function §;!^§(param1:String, param2:Class) : void
      {
         if(!this.§4-§)
         {
            this.§4-§ = new Vector.<§4"a§>();
         }
         this.§4-§[this.§4-§.length] = new §4"a§(param1,param2);
      }
      
      public function set §-m§(param1:String) : void
      {
         this.§="w§ = param1;
      }
      
      public function get §-m§() : String
      {
         return this.§="w§;
      }
      
      public function §]"t§() : void
      {
         var _loc1_:§4"a§ = null;
         for each(_loc1_ in this.§4-§)
         {
            §3#U§.§9#^§.§6#"§(_loc1_.§"T§,_loc1_.§7!T§);
         }
      }
      
      public function get § p§() : Vector.<§4"a§>
      {
         return this.§4-§.concat();
      }
      
      public function §7!+§(param1:§-"Z§) : void
      {
         var _loc2_:§4"a§ = null;
         for each(_loc2_ in param1.§ p§)
         {
            this.§;!^§(_loc2_.§"T§,_loc2_.§7!T§);
         }
      }
   }
}
