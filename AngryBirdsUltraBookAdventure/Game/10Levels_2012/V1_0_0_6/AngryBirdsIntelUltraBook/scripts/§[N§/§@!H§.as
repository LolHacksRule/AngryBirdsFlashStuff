package §[N§
{
   import §4;§.§5n§;
   import §8!6§.Item;
   import §[!I§.§<-§;
   import flash.display.Sprite;
   
   public class §@!H§ extends Sprite
   {
       
      
      public var §7!l§:§<!b§;
      
      public function §@!H§()
      {
         super();
      }
      
      public function §38§(param1:String) : void
      {
         if(this.§7!l§)
         {
            this.§7!l§.§,U§(param1);
         }
      }
      
      public function §@!<§(param1:Array) : §<!b§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§0!R§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§6y§(_loc2_.§@H§,_loc2_.sId,_loc2_.§0!R§,§<-§.§;!]§,110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§0!R§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§38§(_loc3_.§@H§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§7!l§.§1!!§(_loc4_);
         }
         return this.§7!l§;
      }
      
      public function §6y§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §<!b§
      {
         var _loc8_:§<!b§ = null;
         for each(_loc8_ in param4)
         {
            if(_loc8_.§^6§().§@H§ == param1)
            {
               _loc8_.§^6§().sId = param2;
               _loc8_.§^6§().§0!R§ = param3;
               _loc8_.show(param5,param6);
               if(!param7)
               {
                  §5n§.§%!_§ = _loc8_;
               }
               this.§7!l§ = _loc8_;
               while(this.numChildren > 0)
               {
                  removeChildAt(0);
               }
               this.addChild(_loc8_);
            }
            else
            {
               _loc8_.hide();
            }
         }
         return this.§7!l§;
      }
   }
}
