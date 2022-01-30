package § L§
{
   import §="§.§="-§;
   import §`"3§.§ ]§;
   import flash.display.DisplayObject;
   
   public class §["-§ extends §0!;§
   {
       
      
      private const §%"0§:int = 3000;
      
      private const §4b§:int = 3000;
      
      private var §;>§:int;
      
      private var §,!5§:§ ]§;
      
      private var §!!<§:int;
      
      public function §["-§()
      {
         super();
         this.§,!5§ = new § ]§();
         §4""§ = "Check stability";
      }
      
      override public function update(param1:§="-§, param2:int) : void
      {
         this.§;>§ -= param2;
         if(!§3!9§ && this.§;>§ <= 0)
         {
            if(this.§!!<§ > param1.getPigCount())
            {
               §9u§(this.§4b§);
               this.§,!5§.§+!S§();
               §3!9§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§4b§);
               this.§,!5§.§`!u§();
               §3!9§ = true;
            }
         }
         this.§,!5§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§="-§) : void
      {
         super.startCheck(param1);
         this.§;>§ = this.§%"0§;
         this.§!!<§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§,!5§]);
      }
   }
}
