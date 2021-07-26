package §^!o§
{
   import §5!G§.§&2§;
   
   public class §]p§
   {
       
      
      private var §";§:Vector.<§!u§>;
      
      private var §,!'§:String;
      
      private var §9!Z§:Class;
      
      private var §>B§:String = "";
      
      private var §4#§:Class;
      
      private var §<!y§:Class;
      
      private var §]F§:Boolean;
      
      private var §4!h§:String;
      
      private var §%8§:String;
      
      private var §&O§:String;
      
      private var §'1§:Class;
      
      private var §5E§:Boolean = false;
      
      private var §&!u§:Array;
      
      public function §]p§(param1:String, param2:Class, param3:String, param4:String, param5:Boolean)
      {
         super();
         this.§,!'§ = param1;
         this.§9!Z§ = param2;
         this.§4!h§ = param3;
         this.§%8§ = param4;
         this.§]F§ = param5;
      }
      
      public function get §<f§() : Boolean
      {
         return this.§]F§;
      }
      
      public function set §<f§(param1:Boolean) : void
      {
         this.§]F§ = param1;
      }
      
      public function get §`'§() : Class
      {
         return this.§9!Z§;
      }
      
      public function get §6!§() : Class
      {
         return this.§4#§;
      }
      
      public function set §6!§(param1:Class) : void
      {
         this.§4#§ = param1;
      }
      
      public function get §8!Z§() : Class
      {
         return this.§<!y§;
      }
      
      public function set §8!Z§(param1:Class) : void
      {
         this.§<!y§ = param1;
      }
      
      public function get tutorials() : String
      {
         return this.§>B§;
      }
      
      public function set tutorials(param1:String) : void
      {
         this.§>B§ = param1;
      }
      
      public function get §'!z§() : Class
      {
         return this.§'1§;
      }
      
      public function set §'!z§(param1:Class) : void
      {
         this.§'1§ = param1;
      }
      
      public function get §;$§() : String
      {
         return this.§&O§;
      }
      
      public function set §;$§(param1:String) : void
      {
         this.§&O§ = param1;
      }
      
      public function get §>h§() : Boolean
      {
         return this.§5E§;
      }
      
      public function set §>h§(param1:Boolean) : void
      {
         this.§5E§ = param1;
      }
      
      public function get §>"2§() : Array
      {
         return this.§&!u§;
      }
      
      public function set §>"2§(param1:Array) : void
      {
         this.§&!u§ = param1;
      }
      
      public function get §!">§() : String
      {
         return this.§,!'§;
      }
      
      public function get §4!`§() : String
      {
         return this.§4!h§;
      }
      
      public function §6,§(param1:String, param2:Class) : void
      {
         if(!this.§";§)
         {
            this.§";§ = new Vector.<§!u§>();
         }
         this.§";§[this.§";§.length] = new §!u§(param1,param2);
      }
      
      public function get §[!k§() : String
      {
         return this.§%8§;
      }
      
      public function §=X§() : void
      {
         var _loc1_:§!u§ = null;
         for each(_loc1_ in this.§";§)
         {
            §&2§.§5!k§.§1!L§(_loc1_.§%"2§,new _loc1_.replaceState());
         }
      }
      
      public function get §<!]§() : Vector.<§!u§>
      {
         return this.§";§.concat();
      }
      
      public function §=!#§(param1:§]p§) : void
      {
         var _loc2_:§!u§ = null;
         for each(_loc2_ in param1.§<!]§)
         {
            this.§6,§(_loc2_.§%"2§,_loc2_.replaceState);
         }
      }
   }
}
