package §^[§
{
   import §'!A§.§-!2§;
   import §'i§.§,!1§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import flash.filters.ColorMatrixFilter;
   
   public class §9!Z§
   {
      
      private static var §1%§:§9!Z§;
       
      
      private var §2!H§:Vector.<§-!2§>;
      
      private var §?E§:§'s§;
      
      public function §9!Z§(param1:§'!K§)
      {
         this.§2!H§ = new Vector.<§-!2§>();
         super();
         if(!§1%§)
         {
            §1%§ = this;
         }
         this.§?E§ = param1;
      }
      
      public static function get §2=§() : §9!Z§
      {
         return §1%§;
      }
      
      private static function §'!L§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §,M§() : void
      {
         if(!§,!1§.§2=§.§[!e§())
         {
            this.§1!f§("Categories");
         }
         else
         {
            this.§0!'§("Categories");
         }
         if(!§,!1§.§2=§.§"";§())
         {
            this.§1!f§("ButtonCheck");
            this.§3![§("ButtonCheck",false);
         }
         else
         {
            this.§1!f§("ButtonCheck");
            this.§3![§("ButtonCheck",false);
         }
         if(!§,!1§.§2=§.§ b§())
         {
            this.§1!f§("ButtonCheck");
         }
         else
         {
            this.§0!'§("ButtonCheck");
            this.§3![§("ButtonCheck");
         }
      }
      
      public function §#Z§() : void
      {
         var _loc1_:§-!2§ = null;
         for each(_loc1_ in this.§2!H§)
         {
            this.§];§(_loc1_,[]);
         }
         this.§2!H§ = new Vector.<§-!2§>();
      }
      
      private function §];§(param1:§-!2§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §`!T§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §`!T§).§"!_§.length)
            {
               this.§];§((param1 as §`!T§).§"!_§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§2!H§.push(param1);
         }
      }
      
      public function §5![§(param1:§-!2§) : void
      {
         this.§];§(param1,[§'!L§()]);
      }
      
      public function §1!f§(param1:String) : void
      {
         var _loc2_:§-!2§ = this.§?E§.getItemByName(param1);
         this.§];§(_loc2_,[§'!L§()]);
      }
      
      public function §0!'§(param1:String) : void
      {
         var _loc2_:§-!2§ = this.§?E§.getItemByName(param1);
         this.§];§(_loc2_,[]);
      }
      
      public function §3![§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§-!2§ = this.§?E§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
