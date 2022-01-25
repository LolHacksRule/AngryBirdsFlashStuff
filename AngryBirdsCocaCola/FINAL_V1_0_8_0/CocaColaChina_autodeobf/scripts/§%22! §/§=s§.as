package §"! §
{
   import flash.utils.getTimer;
   
   public class §=s§
   {
       
      
      private var mName:String;
      
      private var §<!+§:String;
      
      private var §%!-§:String;
      
      private var §4!5§:String;
      
      private var §&3§:uint;
      
      private var §1v§:uint;
      
      private var §'!a§:uint;
      
      private var §3E§:Boolean = false;
      
      public function §=s§()
      {
         super();
         this.§'!a§ = getTimer();
      }
      
      public function get §9&§() : Boolean
      {
         return this.§3E§;
      }
      
      public function set §9&§(param1:Boolean) : void
      {
         this.§3E§ = param1;
      }
      
      public function get §"!4§() : String
      {
         return this.§4!5§;
      }
      
      public function set §"!4§(param1:String) : void
      {
         this.§4!5§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §2-§() : String
      {
         return this.§<!+§;
      }
      
      public function set §2-§(param1:String) : void
      {
         this.§<!+§ = param1;
      }
      
      public function get password() : String
      {
         return this.§%!-§;
      }
      
      public function set password(param1:String) : void
      {
         this.§%!-§ = param1;
      }
      
      public function get §+6§() : uint
      {
         this.§&3§ = getTimer() - this.§'!a§;
         return this.§&3§;
      }
      
      public function get §1!'§() : uint
      {
         return this.§1v§;
      }
      
      public function set §1!'§(param1:uint) : void
      {
         this.§1v§ = param1;
      }
      
      public function get §![§() : Boolean
      {
         if(this.§"!4§ != null && this.§"!4§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
