package §!!M§
{
   import flash.utils.getTimer;
   
   public class §,!+§
   {
       
      
      private var mName:String;
      
      private var §@!$§:String;
      
      private var §^Q§:String;
      
      private var §`^§:String;
      
      private var §5!I§:uint;
      
      private var §@!W§:uint;
      
      private var §&!@§:uint;
      
      private var §-!1§:Boolean = false;
      
      public function §,!+§()
      {
         super();
         this.§&!@§ = getTimer();
      }
      
      public function get §19§() : Boolean
      {
         return this.§-!1§;
      }
      
      public function set §19§(param1:Boolean) : void
      {
         this.§-!1§ = param1;
      }
      
      public function get §'!=§() : String
      {
         return this.§`^§;
      }
      
      public function set §'!=§(param1:String) : void
      {
         this.§`^§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §;S§() : String
      {
         return this.§@!$§;
      }
      
      public function set §;S§(param1:String) : void
      {
         this.§@!$§ = param1;
      }
      
      public function get §`!&§() : String
      {
         return this.§^Q§;
      }
      
      public function set §`!&§(param1:String) : void
      {
         this.§^Q§ = param1;
      }
      
      public function get §^!2§() : uint
      {
         this.§5!I§ = getTimer() - this.§&!@§;
         return this.§5!I§;
      }
      
      public function get §^A§() : uint
      {
         return this.§@!W§;
      }
      
      public function set §^A§(param1:uint) : void
      {
         this.§@!W§ = param1;
      }
      
      public function get §4!,§() : Boolean
      {
         if(this.§'!=§ != null && this.§'!=§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
