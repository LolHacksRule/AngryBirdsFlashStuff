package §^!k§
{
   import §&!<§.§>!V§;
   import §1" §.§!!2§;
   import §=!7§.§6W§;
   import §@y§.§0"4§;
   import flash.filters.ColorMatrixFilter;
   
   public class §&!T§
   {
      
      private static var §+!u§:§&!T§;
       
      
      private var §=!5§:Vector.<§0"4§>;
      
      private var §`!v§:§>!V§;
      
      public function §&!T§(param1:§return§)
      {
         this.§=!5§ = new Vector.<§0"4§>();
         super();
         if(!§+!u§)
         {
            §+!u§ = this;
         }
         this.§`!v§ = param1;
      }
      
      public static function get §[E§() : §&!T§
      {
         return §+!u§;
      }
      
      private static function §6!r§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §=3§() : void
      {
         if(!§!!2§.§[E§.§]"7§())
         {
            this.§'"0§("Categories");
         }
         else
         {
            this.§@!i§("Categories");
         }
         if(!§!!2§.§[E§.§["&§())
         {
            this.§'"0§("ButtonCheck");
            this.§@!h§("ButtonCheck",false);
         }
         else
         {
            this.§'"0§("ButtonCheck");
            this.§@!h§("ButtonCheck",false);
         }
         if(!§!!2§.§[E§.§+6§())
         {
            this.§'"0§("ButtonCheck");
         }
         else
         {
            this.§@!i§("ButtonCheck");
            this.§@!h§("ButtonCheck");
         }
      }
      
      public function §1!T§() : void
      {
         var _loc1_:§0"4§ = null;
         for each(_loc1_ in this.§=!5§)
         {
            this.§ v§(_loc1_,[]);
         }
         this.§=!5§ = new Vector.<§0"4§>();
      }
      
      private function § v§(param1:§0"4§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §6W§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §6W§).§[z§.length)
            {
               this.§ v§((param1 as §6W§).§[z§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§=!5§.push(param1);
         }
      }
      
      public function §+Z§(param1:§0"4§) : void
      {
         this.§ v§(param1,[§6!r§()]);
      }
      
      public function §'"0§(param1:String) : void
      {
         var _loc2_:§0"4§ = this.§`!v§.getItemByName(param1);
         this.§ v§(_loc2_,[§6!r§()]);
      }
      
      public function §@!i§(param1:String) : void
      {
         var _loc2_:§0"4§ = this.§`!v§.getItemByName(param1);
         this.§ v§(_loc2_,[]);
      }
      
      public function §@!h§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§0"4§ = this.§`!v§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
