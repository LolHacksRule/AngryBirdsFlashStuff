package §4m§
{
   import §&!P§.§^!!§;
   import §7&§.§74§;
   import flash.display.DisplayObject;
   
   public class §+r§ extends §8o§
   {
       
      
      private const §3"<§:int = 3000;
      
      private const §@$§:int = 3000;
      
      private var §3R§:int;
      
      private var §?V§:§74§;
      
      private var §@&§:int;
      
      public function §+r§()
      {
         super();
         this.§?V§ = new §74§();
         §]B§ = "Check stability";
      }
      
      override public function update(param1:§^!!§, param2:int) : void
      {
         this.§3R§ -= param2;
         if(!§ !7§ && this.§3R§ <= 0)
         {
            if(this.§@&§ > param1.getPigCount())
            {
               §6o§(this.§@$§);
               this.§?V§.§%!§();
               § !7§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§@$§);
               this.§?V§.§]!y§();
               § !7§ = true;
            }
         }
         this.§?V§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§^!!§) : void
      {
         super.startCheck(param1);
         this.§3R§ = this.§3"<§;
         this.§@&§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§?V§]);
      }
   }
}
