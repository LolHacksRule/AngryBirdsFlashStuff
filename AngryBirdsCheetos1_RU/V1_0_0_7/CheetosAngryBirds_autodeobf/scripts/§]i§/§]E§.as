package §]i§
{
   import flash.utils.getTimer;
   
   public class §]E§
   {
       
      
      private var mName:String;
      
      private var §8!C§:String;
      
      private var §^![§:String;
      
      private var §5R§:String;
      
      private var §&"§:uint;
      
      private var §"K§:uint;
      
      private var §1!2§:uint;
      
      private var §=!6§:Boolean = false;
      
      public function §]E§()
      {
         super();
         this.§1!2§ = getTimer();
      }
      
      public function get §%+§() : Boolean
      {
         return this.§=!6§;
      }
      
      public function set §%+§(param1:Boolean) : void
      {
         this.§=!6§ = param1;
      }
      
      public function get §3!8§() : String
      {
         return this.§5R§;
      }
      
      public function set §3!8§(param1:String) : void
      {
         this.§5R§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §5@§() : String
      {
         return this.§8!C§;
      }
      
      public function set §5@§(param1:String) : void
      {
         this.§8!C§ = param1;
      }
      
      public function get §>!H§() : String
      {
         return this.§^![§;
      }
      
      public function set §>!H§(param1:String) : void
      {
         this.§^![§ = param1;
      }
      
      public function get §'!H§() : uint
      {
         this.§&"§ = getTimer() - this.§1!2§;
         return this.§&"§;
      }
      
      public function get §^h§() : uint
      {
         return this.§"K§;
      }
      
      public function set §^h§(param1:uint) : void
      {
         this.§"K§ = param1;
      }
      
      public function get §`5§() : Boolean
      {
         if(this.§3!8§ != null && this.§3!8§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
