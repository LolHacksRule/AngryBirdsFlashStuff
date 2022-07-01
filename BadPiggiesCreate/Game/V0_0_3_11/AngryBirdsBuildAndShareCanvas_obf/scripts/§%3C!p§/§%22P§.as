package §<!p§
{
   import §2i§.§%!+§;
   
   public class §"P§
   {
      
      private static var §+!x§:§"P§;
       
      
      private var §!X§:§%!+§;
      
      private var §'O§:int = 50;
      
      private var §2!C§:Vector.<String>;
      
      public function §"P§()
      {
         super();
         this.§!X§ = new §%!+§(1);
         this.§>",§();
      }
      
      public static function get §if §() : §"P§
      {
         if(§+!x§ == null)
         {
            §+!x§ = new §"P§();
         }
         return §+!x§;
      }
      
      public function §>",§() : void
      {
         this.§2!C§ = new Vector.<String>();
      }
      
      public function §98§() : void
      {
         this.§2!C§ = null;
      }
      
      public function §;I§(param1:String) : void
      {
         this.§2!C§.push(param1);
      }
      
      public function get §#!G§() : int
      {
         return this.§'O§;
      }
      
      public function set §#!G§(param1:int) : void
      {
         this.§'O§ = param1;
      }
      
      public function §@b§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§2!C§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§2!C§)
         {
            if(_loc1_.indexOf("BIRD_") == 0)
            {
               return true;
            }
         }
         return false;
      }
   }
}
