package §^H§
{
   import §,!x§.§0!s§;
   import §5!8§.§+!?§;
   import §@">§.§%!u§;
   import §^x§.§3!r§;
   import flash.filters.ColorMatrixFilter;
   
   public class §&E§
   {
      
      private static var §%!Y§:§&E§;
       
      
      private var §?"<§:Vector.<§3!r§>;
      
      private var §?F§:§%!u§;
      
      public function §&E§(param1:§1l§)
      {
         this.§?"<§ = new Vector.<§3!r§>();
         super();
         if(!§%!Y§)
         {
            §%!Y§ = this;
         }
         this.§?F§ = param1;
      }
      
      public static function get § "!§() : §&E§
      {
         return §%!Y§;
      }
      
      private static function §^!>§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §`!q§() : void
      {
         if(!§0!s§.§ "!§.§7!F§())
         {
            this.§-!!§("Categories");
         }
         else
         {
            this.§"!p§("Categories");
         }
         if(!§0!s§.§ "!§.§>!z§())
         {
            this.§-!!§("ButtonCheck");
            this.§+"?§("ButtonCheck",false);
         }
         else
         {
            this.§-!!§("ButtonCheck");
            this.§+"?§("ButtonCheck",false);
         }
         if(!§0!s§.§ "!§.§>!<§())
         {
            this.§-!!§("ButtonCheck");
         }
         else
         {
            this.§"!p§("ButtonCheck");
            this.§+"?§("ButtonCheck");
         }
      }
      
      public function §`b§() : void
      {
         var _loc1_:§3!r§ = null;
         for each(_loc1_ in this.§?"<§)
         {
            this.§!E§(_loc1_,[]);
         }
         this.§?"<§ = new Vector.<§3!r§>();
      }
      
      private function §!E§(param1:§3!r§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §+!?§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §+!?§).§@"9§.length)
            {
               this.§!E§((param1 as §+!?§).§@"9§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§?"<§.push(param1);
         }
      }
      
      public function §9B§(param1:§3!r§) : void
      {
         this.§!E§(param1,[§^!>§()]);
      }
      
      public function §-!!§(param1:String) : void
      {
         var _loc2_:§3!r§ = this.§?F§.getItemByName(param1);
         this.§!E§(_loc2_,[§^!>§()]);
      }
      
      public function §"!p§(param1:String) : void
      {
         var _loc2_:§3!r§ = this.§?F§.getItemByName(param1);
         this.§!E§(_loc2_,[]);
      }
      
      public function §+"?§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§3!r§ = this.§?F§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
