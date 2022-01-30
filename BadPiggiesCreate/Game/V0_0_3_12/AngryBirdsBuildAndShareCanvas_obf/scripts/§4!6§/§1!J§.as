package §4!6§
{
   import §4!#§.§[R§;
   import §5h§.§4!B§;
   import flash.display.DisplayObject;
   
   public class §1!J§ extends §[n§
   {
       
      
      private const §2!F§:int = 3000;
      
      private const §9!w§:int = 3000;
      
      private var §%Y§:int;
      
      private var §5!1§:§4!B§;
      
      private var §=l§:int;
      
      public function §1!J§()
      {
         super();
         this.§5!1§ = new §4!B§();
         §1!3§ = "Check stability";
      }
      
      override public function update(param1:§[R§, param2:int) : void
      {
         this.§%Y§ -= param2;
         if(!§3!X§ && this.§%Y§ <= 0)
         {
            if(this.§=l§ > param1.getPigCount())
            {
               §;m§(this.§9!w§);
               this.§5!1§.§%!q§();
               §3!X§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§9!w§);
               this.§5!1§.§9" §();
               §3!X§ = true;
            }
         }
         this.§5!1§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§[R§) : void
      {
         super.startCheck(param1);
         this.§%Y§ = this.§2!F§;
         this.§=l§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§5!1§]);
      }
   }
}
