package §&o§
{
   import flash.utils.getTimer;
   
   public class §^O§
   {
       
      
      private var mName:String;
      
      private var §8"§:String;
      
      private var §`s§:String;
      
      private var §7A§:String;
      
      private var §@M§:uint;
      
      private var §#!-§:uint;
      
      private var §,E§:uint;
      
      private var §8[§:Boolean = false;
      
      public function §^O§()
      {
         super();
         this.§,E§ = getTimer();
      }
      
      public function get §"!K§() : Boolean
      {
         return this.§8[§;
      }
      
      public function set §"!K§(param1:Boolean) : void
      {
         this.§8[§ = param1;
      }
      
      public function get §=o§() : String
      {
         return this.§7A§;
      }
      
      public function set §=o§(param1:String) : void
      {
         this.§7A§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get § I§() : String
      {
         return this.§8"§;
      }
      
      public function set § I§(param1:String) : void
      {
         this.§8"§ = param1;
      }
      
      public function get §"N§() : String
      {
         return this.§`s§;
      }
      
      public function set §"N§(param1:String) : void
      {
         this.§`s§ = param1;
      }
      
      public function get §3!^§() : uint
      {
         this.§@M§ = getTimer() - this.§,E§;
         return this.§@M§;
      }
      
      public function get §3Q§() : uint
      {
         return this.§#!-§;
      }
      
      public function set §3Q§(param1:uint) : void
      {
         this.§#!-§ = param1;
      }
      
      public function get §-!3§() : Boolean
      {
         if(this.§=o§ != null && this.§=o§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
