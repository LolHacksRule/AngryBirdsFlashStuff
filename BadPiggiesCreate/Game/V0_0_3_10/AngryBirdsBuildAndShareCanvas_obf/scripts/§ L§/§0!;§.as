package § L§
{
   import §="§.§="-§;
   import flash.display.DisplayObject;
   
   public class §0!;§
   {
      
      public static const §4I§:int = 0;
      
      public static const §@!Q§:int = 1;
      
      public static const §9;§:int = 2;
      
      public static const §'R§:int = 3;
       
      
      private var §1§:int;
      
      private var §?!G§:int;
      
      private var § ?§:int;
      
      private var §2K§:Boolean;
      
      protected var §3!9§:Boolean = false;
      
      protected var §4""§:String;
      
      public function §0!;§()
      {
         super();
         this.§ ?§ = §4I§;
         this.§4""§ = "";
      }
      
      public function startCheck(param1:§="-§) : void
      {
         this.§3!9§ = false;
         this.§ ?§ = §'R§;
         this.§1§ = 0;
         this.§?!G§ = 0;
      }
      
      public function update(param1:§="-§, param2:int) : void
      {
         if(this.§2K§)
         {
            this.§2K§ = false;
            this.§9u§();
         }
         if(this.§1§ > 0)
         {
            this.§1§ -= param2;
            if(this.§1§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§?!G§ > 0)
         {
            this.§?!G§ -= param2;
            if(this.§?!G§ <= 0)
            {
               this.§9u§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§3!9§ = true;
         this.§1§ = param1;
         if(this.§1§ == 0)
         {
            this.§ ?§ = §9;§;
         }
      }
      
      protected function §9u§(param1:int = 0) : void
      {
         this.§3!9§ = true;
         this.§?!G§ = param1;
         if(this.§?!G§ == 0)
         {
            this.§ ?§ = §@!Q§;
         }
      }
      
      public function §,T§() : void
      {
         this.§2K§ = true;
      }
      
      public function get status() : int
      {
         return this.§ ?§;
      }
      
      public final function reset() : void
      {
         this.§ ?§ = §4I§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§4""§;
      }
   }
}
