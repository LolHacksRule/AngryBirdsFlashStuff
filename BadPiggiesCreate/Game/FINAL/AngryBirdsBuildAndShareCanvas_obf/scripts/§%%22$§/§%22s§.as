package §%"$§
{
   import §+!o§.§?"-§;
   import §3§.§5§;
   import flash.display.DisplayObject;
   
   public class §"s§ extends §^!U§
   {
       
      
      private const §-"'§:int = 3000;
      
      private const §?"'§:int = 3000;
      
      private var §6#§:int;
      
      private var §4o§:§5§;
      
      private var §3"6§:int;
      
      public function §"s§()
      {
         super();
         this.§4o§ = new §5§();
         §9!7§ = "Check stability";
      }
      
      override public function update(param1:§?"-§, param2:int) : void
      {
         this.§6#§ -= param2;
         if(!§#[§ && this.§6#§ <= 0)
         {
            if(this.§3"6§ > param1.getPigCount())
            {
               §3!P§(this.§?"'§);
               this.§4o§.§]"8§();
               §#[§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§?"'§);
               this.§4o§.§81§();
               §#[§ = true;
            }
         }
         this.§4o§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§?"-§) : void
      {
         super.startCheck(param1);
         this.§6#§ = this.§-"'§;
         this.§3"6§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§4o§]);
      }
   }
}
