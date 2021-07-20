package §2!6§
{
   public class §?G§
   {
       
      
      private var §5!#§:String;
      
      private var §#"1§:Boolean;
      
      private var §^!b§:String;
      
      private var §9!s§:String;
      
      private var §="E§:String;
      
      private var §`$§:String;
      
      private var §+"&§:Array;
      
      private var §-!,§:Boolean = true;
      
      public function §?G§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Array = null, param7:Boolean = true)
      {
         super();
         this.§^!b§ = param1;
         this.§#"1§ = param7;
         this.§5!#§ = param2;
         this.§9!s§ = param3;
         this.§`$§ = param4;
         this.§="E§ = param5;
         this.§+"&§ = param6;
      }
      
      public function get §&Z§() : String
      {
         return this.§5!#§;
      }
      
      public function get §02§() : Boolean
      {
         return this.§#"1§;
      }
      
      public function get §5"5§() : String
      {
         return this.§^!b§;
      }
      
      public function get §&F§() : Boolean
      {
         return this.§-!,§;
      }
      
      public function set §&F§(param1:Boolean) : void
      {
         this.§-!,§ = param1;
      }
      
      public function get §7!4§() : String
      {
         return this.§9!s§;
      }
      
      public function get §4W§() : String
      {
         return this.§="E§;
      }
      
      public function get §"!a§() : String
      {
         return this.§`$§;
      }
      
      public function get §5"<§() : Array
      {
         if(this.§+"&§ != null)
         {
            return this.§+"&§.concat();
         }
         return null;
      }
   }
}
