package §>3§
{
   import §?"&§.§5b§;
   import flash.display.DisplayObject;
   
   public class §<!-§
   {
      
      public static const §3u§:int = 0;
      
      public static const §^-§:int = 1;
      
      public static const §;"!§:int = 2;
      
      public static const §?"#§:int = 3;
       
      
      private var §[^§:int;
      
      private var §1_§:int;
      
      private var §<H§:int;
      
      private var §^!^§:Boolean;
      
      protected var §+o§:Boolean = false;
      
      protected var §?!Y§:String;
      
      public function §<!-§()
      {
         super();
         this.§<H§ = §3u§;
         this.§?!Y§ = "";
      }
      
      public function startCheck(param1:§5b§) : void
      {
         this.§+o§ = false;
         this.§<H§ = §?"#§;
         this.§[^§ = 0;
         this.§1_§ = 0;
      }
      
      public function update(param1:§5b§, param2:int) : void
      {
         if(this.§^!^§)
         {
            this.§^!^§ = false;
            this.§%!M§();
         }
         if(this.§[^§ > 0)
         {
            this.§[^§ -= param2;
            if(this.§[^§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§1_§ > 0)
         {
            this.§1_§ -= param2;
            if(this.§1_§ <= 0)
            {
               this.§%!M§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§+o§ = true;
         this.§[^§ = param1;
         if(this.§[^§ == 0)
         {
            this.§<H§ = §;"!§;
         }
      }
      
      protected function §%!M§(param1:int = 0) : void
      {
         this.§+o§ = true;
         this.§1_§ = param1;
         if(this.§1_§ == 0)
         {
            this.§<H§ = §^-§;
         }
      }
      
      public function §+L§() : void
      {
         this.§^!^§ = true;
      }
      
      public function get status() : int
      {
         return this.§<H§;
      }
      
      public final function reset() : void
      {
         this.§<H§ = §3u§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§?!Y§;
      }
   }
}
