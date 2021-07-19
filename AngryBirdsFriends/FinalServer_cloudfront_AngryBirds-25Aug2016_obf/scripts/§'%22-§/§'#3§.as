package §'"-§
{
   import flash.utils.Dictionary;
   
   public class §'#3§
   {
       
      
      private var §]"Y§:String;
      
      private var §&!<§:Boolean;
      
      private var §3#%§:String;
      
      private var §2"f§:String;
      
      private var §'!N§:String;
      
      private var §4"p§:String;
      
      private var §%!Z§:Array;
      
      private var §1W§:Boolean = true;
      
      private var §!"§:String;
      
      private var §+#@§:String;
      
      private var §%"^§:Dictionary;
      
      public function §'#3§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Array = null, param7:String = "", param8:String = "", param9:Boolean = true)
      {
         this.§%"^§ = new Dictionary();
         super();
         this.§3#%§ = param1;
         this.§&!<§ = param9;
         this.§]"Y§ = param2;
         this.§2"f§ = param3;
         this.§4"p§ = param4;
         this.§'!N§ = param5;
         this.§%!Z§ = param6;
         this.§!"§ = param7;
         this.§+#@§ = param8;
      }
      
      public function get §["u§() : String
      {
         return this.§]"Y§;
      }
      
      public function get §6"l§() : Boolean
      {
         return this.§&!<§;
      }
      
      public function get §"!E§() : String
      {
         return this.§3#%§;
      }
      
      public function get §6!u§() : Boolean
      {
         return this.§1W§;
      }
      
      public function set §6!u§(param1:Boolean) : void
      {
         this.§1W§ = param1;
      }
      
      public function get buttonName() : String
      {
         return this.§2"f§;
      }
      
      public function get eventName() : String
      {
         return this.§'!N§;
      }
      
      public function get §@d§() : String
      {
         return this.§4"p§;
      }
      
      public function get §4!W§() : Array
      {
         if(this.§%!Z§ != null)
         {
            return this.§%!Z§.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.§!"§;
      }
      
      public function get §^!y§() : String
      {
         return this.§+#@§;
      }
      
      public function §3$8§(param1:String) : Number
      {
         if(!this.§%"^§[param1])
         {
            return 1;
         }
         return this.§%"^§[param1];
      }
      
      public function §+#c§(param1:String, param2:Number) : void
      {
         this.§%"^§[param1] = param2;
      }
   }
}
