package § in§
{
   import §%!&§.§'"-§;
   import §-" §.§]!R§;
   import flash.display.DisplayObject;
   
   public class §`!U§ extends §8R§
   {
       
      
      private const §^!A§:int = 3000;
      
      private const §&F§:int = 3000;
      
      private var §"!G§:int;
      
      private var §6!&§:§]!R§;
      
      private var §%!-§:int;
      
      public function §`!U§()
      {
         super();
         this.§6!&§ = new §]!R§();
         §53§ = "Check stability";
      }
      
      override public function update(param1:§'"-§, param2:int) : void
      {
         this.§"!G§ -= param2;
         if(!§[;§ && this.§"!G§ <= 0)
         {
            if(this.§%!-§ > param1.getPigCount())
            {
               §^"4§(this.§&F§);
               this.§6!&§.§<_§();
               §[;§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§&F§);
               this.§6!&§.§4!x§();
               §[;§ = true;
            }
         }
         this.§6!&§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§'"-§) : void
      {
         super.startCheck(param1);
         this.§"!G§ = this.§^!A§;
         this.§%!-§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§6!&§]);
      }
   }
}
