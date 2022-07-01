package §9!l§
{
   import §+!d§.§8!=§;
   import §2!5§.§=,§;
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import flash.filters.ColorMatrixFilter;
   
   public class §5!;§
   {
      
      private static var §;A§:§5!;§;
       
      
      private var §+W§:Vector.<§8!=§>;
      
      private var §%""§:§`5§;
      
      public function §5!;§(param1:§`!d§)
      {
         this.§+W§ = new Vector.<§8!=§>();
         super();
         if(!§;A§)
         {
            §;A§ = this;
         }
         this.§%""§ = param1;
      }
      
      public static function get §if §() : §5!;§
      {
         return §;A§;
      }
      
      private static function §3!l§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function § `§() : void
      {
         if(!§=,§.§if §.§?!W§())
         {
            this.§7!A§("Categories");
         }
         else
         {
            this.§&!y§("Categories");
         }
         if(!§=,§.§if §.§"!-§())
         {
            this.§7!A§("ButtonCheck");
            this.§0!&§("ButtonCheck",false);
         }
         else
         {
            this.§7!A§("ButtonCheck");
            this.§0!&§("ButtonCheck",false);
         }
         if(!§=,§.§if §.§^a§())
         {
            this.§7!A§("ButtonCheck");
         }
         else
         {
            this.§&!y§("ButtonCheck");
            this.§0!&§("ButtonCheck");
         }
      }
      
      public function §,$§() : void
      {
         var _loc1_:§8!=§ = null;
         for each(_loc1_ in this.§+W§)
         {
            this.§="8§(_loc1_,[]);
         }
         this.§+W§ = new Vector.<§8!=§>();
      }
      
      private function §="8§(param1:§8!=§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §;!u§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §;!u§).§`6§.length)
            {
               this.§="8§((param1 as §;!u§).§`6§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§+W§.push(param1);
         }
      }
      
      public function §7!A§(param1:String) : void
      {
         var _loc2_:§8!=§ = this.§%""§.getItemByName(param1);
         this.§="8§(_loc2_,[§3!l§()]);
      }
      
      public function §&!y§(param1:String) : void
      {
         var _loc2_:§8!=§ = this.§%""§.getItemByName(param1);
         this.§="8§(_loc2_,[]);
      }
      
      public function §0!&§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§8!=§ = this.§%""§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
