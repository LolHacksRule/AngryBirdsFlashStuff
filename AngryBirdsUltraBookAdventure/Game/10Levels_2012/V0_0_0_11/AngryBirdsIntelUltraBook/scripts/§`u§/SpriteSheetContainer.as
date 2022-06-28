package §`u§
{
   public class SpriteSheetContainer implements §@K§
   {
       
      
      private var §=B§:Array;
      
      private var §7!h§:Boolean;
      
      public function SpriteSheetContainer()
      {
         this.§=B§ = [];
         super();
      }
      
      public function §8!I§(param1:SpriteSheetBase) : void
      {
         this.§=B§.push(param1);
         this.§7!h§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:SpriteSheetBase = null;
         for each(_loc1_ in this.§=B§)
         {
            _loc1_.dispose();
         }
         this.§=B§ = [];
      }
      
      public function §?_§(param1:String) : §#!7§
      {
         var _loc2_:§#!7§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=B§.length)
         {
            _loc2_ = (this.§=B§[_loc3_] as SpriteSheetBase).§?_§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §1t§() : int
      {
         return this.§=B§.length;
      }
      
      public function §6!#§(param1:int) : SpriteSheetBase
      {
         if(param1 < 0 || param1 >= this.§1t§)
         {
            return null;
         }
         if(!this.§7!h§)
         {
            this.§=B§.sortOn("name");
            this.§7!h§ = true;
         }
         return this.§=B§[param1];
      }
   }
}
