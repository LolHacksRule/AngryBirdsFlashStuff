package §1!E§
{
   import §&!F§.§3S§;
   import §<+§.§55§;
   
   public class §class§ extends §55§
   {
       
      
      private var §7Q§:String;
      
      private var §6!P§:§3S§;
      
      private var §3§:Boolean;
      
      private var §^!C§:Boolean;
      
      private var §^!<§:Vector.<String>;
      
      public function §class§()
      {
         super();
         this.§6!P§ = new §3S§();
         this.§^!C§ = false;
         this.§^!<§ = new Vector.<String>();
      }
      
      public function get id() : String
      {
         return this.§7Q§;
      }
      
      public function set id(param1:String) : void
      {
         this.§7Q§ = param1;
      }
      
      public function get §`!b§() : int
      {
         return this.§6!P§.§"!4§();
      }
      
      public function get §06§() : §3S§
      {
         return this.§6!P§;
      }
      
      public function get verified() : Boolean
      {
         return this.§3§;
      }
      
      public function set verified(param1:Boolean) : void
      {
         this.§3§ = param1;
      }
      
      public function §>!b§() : Boolean
      {
         return this.§^!C§;
      }
      
      public function §1!d§(param1:Boolean) : void
      {
         this.§^!C§ = param1;
      }
      
      public function §";§(param1:String) : void
      {
         this.§^!<§.push(param1);
      }
      
      public function §8!#§() : String
      {
         return this.§^!<§.shift();
      }
      
      public function §=m§() : void
      {
         this.§^!<§.splice(0,this.§^!<§.length);
      }
   }
}
