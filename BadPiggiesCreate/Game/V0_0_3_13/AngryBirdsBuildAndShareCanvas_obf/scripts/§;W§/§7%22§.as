package §;W§
{
   import § ^§.§@#§;
   import § true§.§1H§;
   import §0!C§.§=!]§;
   import §4!j§.§[!f§;
   import flash.filters.ColorMatrixFilter;
   
   public class §7"§
   {
      
      private static var §`!z§:§7"§;
       
      
      private var §in §:Vector.<§[!f§>;
      
      private var §3?§:§=!]§;
      
      public function §7"§(param1:§"w§)
      {
         this.§in § = new Vector.<§[!f§>();
         super();
         if(!§`!z§)
         {
            §`!z§ = this;
         }
         this.§3?§ = param1;
      }
      
      public static function get §7!?§() : §7"§
      {
         return §`!z§;
      }
      
      private static function §!!Y§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §2!t§() : void
      {
         if(!§@#§.§7!?§.§]Z§())
         {
            this.§>!P§("Categories");
         }
         else
         {
            this.§"! §("Categories");
         }
         if(!§@#§.§7!?§.§6,§())
         {
            this.§>!P§("ButtonCheck");
            this.§2!=§("ButtonCheck",false);
         }
         else
         {
            this.§>!P§("ButtonCheck");
            this.§2!=§("ButtonCheck",false);
         }
         if(!§@#§.§7!?§.§#!^§())
         {
            this.§>!P§("ButtonCheck");
         }
         else
         {
            this.§"! §("ButtonCheck");
            this.§2!=§("ButtonCheck");
         }
      }
      
      public function §=s§() : void
      {
         var _loc1_:§[!f§ = null;
         for each(_loc1_ in this.§in §)
         {
            this.§+![§(_loc1_,[]);
         }
         this.§in § = new Vector.<§[!f§>();
      }
      
      private function §+![§(param1:§[!f§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §1H§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §1H§).§[!P§.length)
            {
               this.§+![§((param1 as §1H§).§[!P§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§in §.push(param1);
         }
      }
      
      public function §=O§(param1:§[!f§) : void
      {
         this.§+![§(param1,[§!!Y§()]);
      }
      
      public function §>!P§(param1:String) : void
      {
         var _loc2_:§[!f§ = this.§3?§.getItemByName(param1);
         this.§+![§(_loc2_,[§!!Y§()]);
      }
      
      public function §"! §(param1:String) : void
      {
         var _loc2_:§[!f§ = this.§3?§.getItemByName(param1);
         this.§+![§(_loc2_,[]);
      }
      
      public function §2!=§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§[!f§ = this.§3?§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
