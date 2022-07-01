package §4!6§
{
   import §4!#§.§[R§;
   import flash.display.DisplayObject;
   
   public class §[n§
   {
      
      public static const §!y§:int = 0;
      
      public static const §%g§:int = 1;
      
      public static const §3^§:int = 2;
      
      public static const §`!>§:int = 3;
       
      
      private var §1>§:int;
      
      private var §6g§:int;
      
      private var §-i§:int;
      
      private var §-Y§:Boolean;
      
      protected var §3!X§:Boolean = false;
      
      protected var §1!3§:String;
      
      public function §[n§()
      {
         super();
         this.§-i§ = §!y§;
         this.§1!3§ = "";
      }
      
      public function startCheck(param1:§[R§) : void
      {
         this.§3!X§ = false;
         this.§-i§ = §`!>§;
         this.§1>§ = 0;
         this.§6g§ = 0;
      }
      
      public function update(param1:§[R§, param2:int) : void
      {
         if(this.§-Y§)
         {
            this.§-Y§ = false;
            this.§;m§();
         }
         if(this.§1>§ > 0)
         {
            this.§1>§ -= param2;
            if(this.§1>§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§6g§ > 0)
         {
            this.§6g§ -= param2;
            if(this.§6g§ <= 0)
            {
               this.§;m§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§3!X§ = true;
         this.§1>§ = param1;
         if(this.§1>§ == 0)
         {
            this.§-i§ = §3^§;
         }
      }
      
      protected function §;m§(param1:int = 0) : void
      {
         this.§3!X§ = true;
         this.§6g§ = param1;
         if(this.§6g§ == 0)
         {
            this.§-i§ = §%g§;
         }
      }
      
      public function §3!5§() : void
      {
         this.§-Y§ = true;
      }
      
      public function get status() : int
      {
         return this.§-i§;
      }
      
      public final function reset() : void
      {
         this.§-i§ = §!y§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§1!3§;
      }
   }
}
