package §2!I§
{
   import flash.utils.getTimer;
   
   public class §[!,§
   {
       
      
      private var mName:String;
      
      private var §1Y§:String;
      
      private var §!!]§:String;
      
      private var §,!!§:String;
      
      private var §&#§:uint;
      
      private var §+#§:uint;
      
      private var §5!3§:uint;
      
      private var §-F§:Boolean = false;
      
      public function §[!,§()
      {
         super();
         this.§5!3§ = getTimer();
      }
      
      public function get §+=§() : Boolean
      {
         return this.§-F§;
      }
      
      public function set §+=§(param1:Boolean) : void
      {
         this.§-F§ = param1;
      }
      
      public function get §^!,§() : String
      {
         return this.§,!!§;
      }
      
      public function set §^!,§(param1:String) : void
      {
         this.§,!!§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §^!F§() : String
      {
         return this.§1Y§;
      }
      
      public function set §^!F§(param1:String) : void
      {
         this.§1Y§ = param1;
      }
      
      public function get §!B§() : String
      {
         return this.§!!]§;
      }
      
      public function set §!B§(param1:String) : void
      {
         this.§!!]§ = param1;
      }
      
      public function get §%!2§() : uint
      {
         this.§&#§ = getTimer() - this.§5!3§;
         return this.§&#§;
      }
      
      public function get §`!!§() : uint
      {
         return this.§+#§;
      }
      
      public function set §`!!§(param1:uint) : void
      {
         this.§+#§ = param1;
      }
      
      public function get §'!-§() : Boolean
      {
         if(this.§^!,§ != null && this.§^!,§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
