package §`!Z§
{
   import § ""§.§6!u§;
   import §7=§.§`!G§;
   import flash.display.DisplayObject;
   
   public class §@3§ extends §>!X§
   {
       
      
      private const §8!G§:int = 3000;
      
      private const §2!&§:int = 3000;
      
      private var §7!v§:int;
      
      private var §9"%§:§`!G§;
      
      private var §#!8§:int;
      
      public function §@3§()
      {
         super();
         this.§9"%§ = new §`!G§();
         §]!=§ = "Check stability";
      }
      
      override public function update(param1:§6!u§, param2:int) : void
      {
         this.§7!v§ -= param2;
         if(!§1l§ && this.§7!v§ <= 0)
         {
            if(this.§#!8§ > param1.getPigCount())
            {
               §-f§(this.§2!&§);
               this.§9"%§.§9^§();
               §1l§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§2!&§);
               this.§9"%§.§7!G§();
               §1l§ = true;
            }
         }
         this.§9"%§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§6!u§) : void
      {
         super.startCheck(param1);
         this.§7!v§ = this.§8!G§;
         this.§#!8§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§9"%§]);
      }
   }
}
