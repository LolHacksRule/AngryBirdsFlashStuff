package §8!§
{
   import §2G§.§""F§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import §2G§.§9!m§;
   import §2G§.§9"=§;
   import §2G§.§;!Y§;
   import §2G§.§>">§;
   import §2G§.§@#P§;
   import §2G§.§[" §;
   import §]!6§.§6Y§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §2"s§ extends §;+§
   {
      
      public static var §;"8§:String;
      
      public static var §-#'§:Dictionary = new Dictionary();
       
      
      private var §>v§:Loader;
      
      private var §8!i§:§2$-§;
      
      public function §2"s§()
      {
         super();
      }
      
      private function §-#Z§(param1:Class) : §2$-§
      {
         if(!§-#'§[param1])
         {
            §-#'§[param1] = [];
         }
         var _loc2_:Array = §-#'§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §-#4§(param1:§2$-§) : void
      {
         var _loc2_:Class = Object(this.§8!i§).constructor;
         if(!§-#'§[_loc2_])
         {
            §-#'§[_loc2_] = [];
         }
         §-#'§[_loc2_].push(param1);
      }
      
      private function § !`§() : void
      {
         var _loc1_:Class = null;
         if(this.§=#%§)
         {
            switch(Object(this.§=#%§).constructor)
            {
               case §@#P§:
                  _loc1_ = §3#5§;
                  break;
               case §[" §:
                  _loc1_ = §#"`§;
                  break;
               case §9"=§:
                  _loc1_ = §@!^§;
                  break;
               case §5$4§:
                  _loc1_ = §=#5§;
                  break;
               case §""F§:
                  _loc1_ = §-"s§;
                  break;
               case §9!m§:
                  _loc1_ = §0$9§;
                  break;
               case §;!Y§:
                  _loc1_ = §1#O§;
                  break;
               case §>">§:
                  _loc1_ = §3"Z§;
            }
         }
         if(!_loc1_)
         {
            §6Y§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§8!i§ ? Object(this.§8!i§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§8!i§)
            {
               this.§-#4§(removeChild(this.§8!i§) as §2$-§);
            }
            this.§8!i§ = addChild(this.§-#Z§(_loc1_)) as §2$-§;
         }
         this.§8!i§.data = this.§=#%§;
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.§ !`§();
         }
      }
      
      public function get §=#%§() : §4O§
      {
         return data as §4O§;
      }
      
      public function get §,#^§() : §2$-§
      {
         return this.§8!i§;
      }
   }
}
