package §6w§
{
   public class SpriteSheetContainer implements §9!%§
   {
       
      
      private var §7!X§:Array;
      
      private var §"!c§:Boolean;
      
      public function SpriteSheetContainer()
      {
         this.§7!X§ = [];
         super();
      }
      
      public function §[!`§(param1:SpriteSheetBase) : void
      {
         this.§7!X§.push(param1);
         this.§"!c§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:SpriteSheetBase = null;
         for each(_loc1_ in this.§7!X§)
         {
            _loc1_.dispose();
         }
         this.§7!X§ = [];
      }
      
      public function §[@§(param1:String) : §<>§
      {
         var _loc2_:§<>§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§7!X§.length)
         {
            _loc2_ = (this.§7!X§[_loc3_] as SpriteSheetBase).§[@§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §9q§() : int
      {
         return this.§7!X§.length;
      }
      
      public function §+t§(param1:int) : SpriteSheetBase
      {
         if(param1 < 0 || param1 >= this.§9q§)
         {
            return null;
         }
         if(!this.§"!c§)
         {
            this.§7!X§.sortOn("name");
            this.§"!c§ = true;
         }
         return this.§7!X§[param1];
      }
   }
}
