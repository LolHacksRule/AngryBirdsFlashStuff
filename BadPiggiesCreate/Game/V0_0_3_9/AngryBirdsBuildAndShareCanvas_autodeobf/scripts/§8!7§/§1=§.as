package §8!7§
{
   import §%!n§.§7P§;
   import §&!&§.§&"1§;
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import flash.filters.ColorMatrixFilter;
   
   public class §1=§
   {
      
      private static var §,!X§:§1=§;
       
      
      private var §@X§:Vector.<§&"1§>;
      
      private var §;i§:§7!!§;
      
      public function §1=§(param1:§&%§)
      {
         this.§@X§ = new Vector.<§&"1§>();
         super();
         if(!§,!X§)
         {
            §,!X§ = this;
         }
         this.§;i§ = param1;
      }
      
      public static function get §'!o§() : §1=§
      {
         return §,!X§;
      }
      
      private static function §`N§() : ColorMatrixFilter
      {
         var _loc1_:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.5,0];
         return new ColorMatrixFilter(_loc1_);
      }
      
      public function §"M§() : void
      {
         if(!§7P§.§'!o§.§2!k§())
         {
            this.§'?§("Categories");
         }
         else
         {
            this.§^!;§("Categories");
         }
         if(!§7P§.§'!o§.isGravityAvailable())
         {
            this.§'?§("ButtonCheck");
            this.§@!=§("ButtonCheck",false);
         }
         else
         {
            this.§'?§("ButtonCheck");
            this.§@!=§("ButtonCheck",false);
         }
         if(!§7P§.§'!o§.canContinue())
         {
            this.§'?§("ButtonCheck");
         }
         else
         {
            this.§^!;§("ButtonCheck");
            this.§@!=§("ButtonCheck");
         }
      }
      
      public function § !7§() : void
      {
         var _loc1_:§&"1§ = null;
         for each(_loc1_ in this.§@X§)
         {
            this.§`!G§(_loc1_,[]);
         }
         this.§@X§ = new Vector.<§&"1§>();
      }
      
      private function §`!G§(param1:§&"1§, param2:Array) : void
      {
         var _loc3_:int = 0;
         if(param1 is §>"-§)
         {
            _loc3_ = 0;
            while(_loc3_ < (param1 as §>"-§).§7!z§.length)
            {
               this.§`!G§((param1 as §>"-§).§7!z§[_loc3_],param2);
               _loc3_++;
            }
         }
         param1.mClip.filters = param2;
         param1.setEnabled(param2.length == 0);
         if(param2.length > 0)
         {
            this.§@X§.push(param1);
         }
      }
      
      public function §'?§(param1:String) : void
      {
         var _loc2_:§&"1§ = this.§;i§.getItemByName(param1);
         this.§`!G§(_loc2_,[§`N§()]);
      }
      
      public function §^!;§(param1:String) : void
      {
         var _loc2_:§&"1§ = this.§;i§.getItemByName(param1);
         this.§`!G§(_loc2_,[]);
      }
      
      public function §@!=§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§&"1§ = this.§;i§.getItemByName(param1);
         _loc3_.setVisibility(param2);
      }
   }
}
