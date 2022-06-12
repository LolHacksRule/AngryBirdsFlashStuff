package §9!z§
{
   import §!q§.§ %§;
   import §0!d§.§7!a§;
   import §4!t§.§=p§;
   import §<8§.§'X§;
   import flash.filters.ColorMatrixFilter;
   
   public class §8!8§
   {
      
      private static var §,5§:§8!8§;
       
      
      private var §!b§:Vector.<§'X§>;
      
      private var §'K§:§=p§;
      
      public function §8!8§(param1:§'Y§)
      {
         this.§!b§ = new Vector.<§'X§>();
         super();
         if(!§,5§)
         {
            §,5§ = this;
         }
         this.§'K§ = param1;
      }
      
      public static function get §,l§() : §8!8§
      {
         return §,5§;
      }
      
      private static function §4!Z§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §]>§() : void
      {
         if(!§ %§.§,l§.§=d§())
         {
            this.§8!N§("Categories");
         }
         else
         {
            this.§["!§("Categories");
         }
         if(!§ %§.§,l§.§1!s§())
         {
            this.§8!N§("ButtonCheck");
            this.§7+§("ButtonCheck",false);
         }
         else
         {
            this.§8!N§("ButtonCheck");
            this.§7+§("ButtonCheck",false);
         }
         if(!§ %§.§,l§.§^l§())
         {
            this.§8!N§("ButtonCheck");
         }
         else
         {
            this.§["!§("ButtonCheck");
            this.§7+§("ButtonCheck");
         }
      }
      
      public function §9!B§() : void
      {
         var _loc1_:§'X§ = null;
         for each(_loc1_ in this.§!b§)
         {
            this.§8!n§(_loc1_,[]);
         }
         this.§!b§ = new Vector.<§'X§>();
      }
      
      private function §8!n§(param1:§'X§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §7!a§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §7!a§).§`F§.length)
            {
               this.§8!n§((param1 as §7!a§).§`F§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§!b§.push(param1);
         }
      }
      
      public function §8!N§(param1:String) : void
      {
         var _loc2_:§'X§ = this.§'K§.getItemByName(param1);
         this.§8!n§(_loc2_,[§4!Z§()]);
      }
      
      public function §["!§(param1:String) : void
      {
         var _loc2_:§'X§ = this.§'K§.getItemByName(param1);
         this.§8!n§(_loc2_,[]);
      }
      
      public function §7+§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§'X§ = this.§'K§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
