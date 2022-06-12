package §@!H§
{
   import §!D§.§ use§;
   import §4!7§.§]!1§;
   import §9!7§.§0!`§;
   import §?!V§.§ T§;
   import flash.filters.ColorMatrixFilter;
   
   public class §[!<§
   {
      
      private static var §'!t§:§[!<§;
       
      
      private var §[!4§:Vector.<§0!`§>;
      
      private var §1!j§:§ T§;
      
      public function §[!<§(param1:§,!a§)
      {
         this.§[!4§ = new Vector.<§0!`§>();
         super();
         if(!§'!t§)
         {
            §'!t§ = this;
         }
         this.§1!j§ = param1;
      }
      
      public static function get §9j§() : §[!<§
      {
         return §'!t§;
      }
      
      private static function §-U§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §;!R§() : void
      {
         if(!§]!1§.§9j§.§]=§())
         {
            this.§#!%§("Categories");
         }
         else
         {
            this.§"!Q§("Categories");
         }
         if(!§]!1§.§9j§.isGravityAvailable())
         {
            this.§#!%§("ButtonGravity");
            this.§6;§("ButtonGravity");
            this.§#!%§("ButtonCheck");
            this.§6;§("ButtonCheck",false);
         }
         else
         {
            this.§"!Q§("ButtonGravity");
            this.§6;§("ButtonGravity");
            this.§#!%§("ButtonCheck");
            this.§6;§("ButtonCheck",false);
         }
         if(!§]!1§.§9j§.canContinue())
         {
            this.§#!%§("ButtonCheck");
            this.§6;§("ButtonGravity");
         }
         else
         {
            this.§"!Q§("ButtonCheck");
            this.§6;§("ButtonCheck");
            this.§#!%§("ButtonGravity");
            this.§6;§("ButtonGravity",false);
         }
      }
      
      public function §>!1§() : void
      {
         var _loc1_:§0!`§ = null;
         for each(_loc1_ in this.§[!4§)
         {
            this.§,"+§(_loc1_,[]);
         }
         this.§[!4§ = new Vector.<§0!`§>();
      }
      
      private function §,"+§(param1:§0!`§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is § use§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as § use§).§%`§.length)
            {
               this.§,"+§((param1 as § use§).§%`§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§[!4§.push(param1);
         }
      }
      
      public function §#!%§(param1:String) : void
      {
         var _loc2_:§0!`§ = this.§1!j§.getItemByName(param1);
         this.§,"+§(_loc2_,[§-U§()]);
      }
      
      public function §"!Q§(param1:String) : void
      {
         var _loc2_:§0!`§ = this.§1!j§.getItemByName(param1);
         this.§,"+§(_loc2_,[]);
      }
      
      public function §6;§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§0!`§ = this.§1!j§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
