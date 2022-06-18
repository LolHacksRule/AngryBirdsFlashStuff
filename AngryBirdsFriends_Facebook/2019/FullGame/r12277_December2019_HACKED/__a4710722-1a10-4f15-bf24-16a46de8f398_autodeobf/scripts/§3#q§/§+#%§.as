package §3#q§
{
   import §#"3§.§4!h§;
   import §>#Y§.§!$$§;
   import §>#Y§.§!+§;
   import §>#Y§.§#!&§;
   import §>#Y§.§'#z§;
   import §>#Y§.§0!j§;
   import §>#Y§.§1N§;
   import §>#Y§.§3"Q§;
   import §>#Y§.§5!0§;
   import §>#Y§.§]!H§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §+#%§ extends § !Q§
   {
      
      public static var §!!f§:String;
      
      public static var §`"k§:Dictionary = new Dictionary();
       
      
      private var §<#G§:Loader;
      
      private var §+!V§:§8#>§;
      
      public function §+#%§()
      {
         super();
      }
      
      private function §2!Y§(param1:Class) : §8#>§
      {
         if(!§`"k§[param1])
         {
            §`"k§[param1] = [];
         }
         var _loc2_:Array = §`"k§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §4"V§(param1:§8#>§) : void
      {
         var _loc2_:Class = Object(this.§+!V§).constructor;
         if(!§`"k§[_loc2_])
         {
            §`"k§[_loc2_] = [];
         }
         §`"k§[_loc2_].push(param1);
      }
      
      private function §<"Q§() : void
      {
         var _loc1_:Class = null;
         if(this.§>$B§)
         {
            switch(Object(this.§>$B§).constructor)
            {
               case §!$$§:
                  _loc1_ = §6"R§;
                  break;
               case §]!H§:
                  _loc1_ = §?"r§;
                  break;
               case §0!j§:
                  _loc1_ = §@!i§;
                  break;
               case §#!&§:
                  _loc1_ = §6"V§;
                  break;
               case §5!0§:
                  _loc1_ = §##,§;
                  break;
               case §3"Q§:
                  _loc1_ = LeagueScorePlate;
                  break;
               case §'#z§:
                  _loc1_ = §<#q§;
                  break;
               case §!+§:
                  _loc1_ = §^!7§;
            }
         }
         if(!_loc1_)
         {
            §4!h§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§+!V§ ? Object(this.§+!V§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§+!V§)
            {
               this.§4"V§(removeChild(this.§+!V§) as §8#>§);
            }
            this.§+!V§ = addChild(this.§2!Y§(_loc1_)) as §8#>§;
            this.§+!V§.brandThePlate();
         }
         this.§+!V§.data = this.§>$B§;
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
            this.§<"Q§();
         }
      }
      
      public function get §>$B§() : §1N§
      {
         return data as §1N§;
      }
      
      public function get §"#,§() : §8#>§
      {
         return this.§+!V§;
      }
   }
}
