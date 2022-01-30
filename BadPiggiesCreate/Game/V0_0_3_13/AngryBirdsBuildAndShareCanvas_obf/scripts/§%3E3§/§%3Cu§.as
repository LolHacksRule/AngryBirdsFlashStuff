package §>3§
{
   import §1"?§.§41§;
   import §?"&§.§5b§;
   import flash.display.DisplayObject;
   
   public class §<u§ extends §<!-§
   {
       
      
      private const §"!!§:int = 3000;
      
      private const §>"&§:int = 3000;
      
      private var §`g§:int;
      
      private var §]!3§:§41§;
      
      private var §0!1§:int;
      
      public function §<u§()
      {
         super();
         this.§]!3§ = new §41§();
         §?!Y§ = "Check stability";
      }
      
      override public function update(param1:§5b§, param2:int) : void
      {
         this.§`g§ -= param2;
         if(!§+o§ && this.§`g§ <= 0)
         {
            if(this.§0!1§ > param1.getPigCount())
            {
               §%!M§(this.§>"&§);
               this.§]!3§.§1!Y§();
               §+o§ = true;
            }
            else if(param1.isWorldAtSleep())
            {
               finish(this.§>"&§);
               this.§]!3§.§3"0§();
               §+o§ = true;
            }
         }
         this.§]!3§.update(param2);
         super.update(param1,param2);
      }
      
      override public function startCheck(param1:§5b§) : void
      {
         super.startCheck(param1);
         this.§`g§ = this.§"!!§;
         this.§0!1§ = param1.getPigCount();
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§]!3§]);
      }
   }
}
