package §6!A§
{
   import §<!1§.§9!=§;
   
   public class §4!1§
   {
      
      private static var §#!V§:§4!1§;
       
      
      private var §8"<§:§9!=§;
      
      private var §%!;§:int = 50;
      
      private var §;"?§:Vector.<String>;
      
      public function §4!1§()
      {
         super();
         this.§8"<§ = new §9!=§(1);
         this.§^?§();
      }
      
      public static function get §[E§() : §4!1§
      {
         if(§#!V§ == null)
         {
            §#!V§ = new §4!1§();
         }
         return §#!V§;
      }
      
      public function §^?§() : void
      {
         this.§;"?§ = new Vector.<String>();
      }
      
      public function §break§() : void
      {
         this.§;"?§ = null;
      }
      
      public function §'!0§(param1:String) : void
      {
         this.§;"?§.push(param1);
      }
      
      public function get §2e§() : int
      {
         return this.§%!;§;
      }
      
      public function set §2e§(param1:int) : void
      {
         this.§%!;§ = param1;
      }
      
      public function §<"-§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§;"?§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§;"?§)
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
