package §3!c§
{
   public class SpriteSheetContainer implements §<'§
   {
       
      
      private var §'!;§:Array;
      
      private var §>#§:Boolean;
      
      public function SpriteSheetContainer()
      {
         this.§'!;§ = [];
         super();
      }
      
      public function §?b§(param1:SpriteSheetBase) : void
      {
         this.§'!;§.push(param1);
         this.§>#§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:SpriteSheetBase = null;
         for each(_loc1_ in this.§'!;§)
         {
            _loc1_.dispose();
         }
         this.§'!;§ = [];
      }
      
      public function §1!,§(param1:String) : §33§
      {
         var _loc2_:§33§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§'!;§.length)
         {
            _loc2_ = (this.§'!;§[_loc3_] as SpriteSheetBase).§1!,§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §56§() : int
      {
         return this.§'!;§.length;
      }
      
      public function §!w§(param1:int) : SpriteSheetBase
      {
         if(param1 < 0 || param1 >= this.§56§)
         {
            return null;
         }
         if(!this.§>#§)
         {
            this.§'!;§.sortOn("name");
            this.§>#§ = true;
         }
         return this.§'!;§[param1];
      }
   }
}
