package §`q§
{
   import §<!p§.§"b§;
   import §]r§.§2"%§;
   import flash.display.DisplayObject;
   
   public class §>!N§ extends § ![§
   {
       
      
      private const §1!&§:int = 3000;
      
      private const §`s§:int = 3000;
      
      private var §<"#§:int;
      
      private var §-!m§:§"b§;
      
      private var § ?§:int;
      
      public function §>!N§()
      {
         super();
         this.§-!m§ = new §"b§();
         §5!-§ = "Check stability";
      }
      
      override public function update(param1:§2"%§, param2:int) : void
      {
         this.§<"#§ -= param2;
         if(!§!5§ && this.§<"#§ <= 0)
         {
            if(this.§ ?§ > param1.getPigCount())
            {
               §]!;§(this.§`s§);
               this.§-!m§.§`F§();
               §!5§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§`s§);
               this.§-!m§.§?+§();
               §!5§ = true;
            }
         }
         this.§-!m§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§2"%§) : void
      {
         super.startCheck(param1);
         this.§<"#§ = this.§1!&§;
         this.§ ?§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§-!m§]);
      }
   }
}
