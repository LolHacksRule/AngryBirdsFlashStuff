package §+W§
{
   import §,#,§.§-n§;
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §,#,§.§3!R§;
   import §,#,§.§4!y§;
   import §,#,§.§;#p§;
   import §,#,§.§>#%§;
   import §,#,§.§[!V§;
   import §,#,§.§^#<§;
   import §6"p§.§^"t§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §<#8§ extends §@"<§
   {
      
      public static var §#f§:String;
      
      public static var §<"t§:Dictionary = new Dictionary();
       
      
      private var §@$2§:Loader;
      
      private var §8#9§:§2!$§;
      
      public function §<#8§()
      {
         super();
      }
      
      private function §>#N§(param1:Class) : §2!$§
      {
         if(!§<"t§[param1])
         {
            §<"t§[param1] = [];
         }
         var _loc2_:Array = §<"t§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §[$!§(param1:§2!$§) : void
      {
         var _loc2_:Class = Object(this.§8#9§).constructor;
         if(!§<"t§[_loc2_])
         {
            §<"t§[_loc2_] = [];
         }
         §<"t§[_loc2_].push(param1);
      }
      
      private function §<"E§() : void
      {
         var _loc1_:Class = null;
         if(this.§!#x§)
         {
            switch(Object(this.§!#x§).constructor)
            {
               case §[!V§:
                  _loc1_ = § get§;
                  break;
               case §-n§:
                  _loc1_ = §;,§;
                  break;
               case §>#%§:
                  _loc1_ = §^#v§;
                  break;
               case §2#9§:
                  _loc1_ = §4#O§;
                  break;
               case §;#p§:
                  _loc1_ = §1#5§;
                  break;
               case §3!R§:
                  _loc1_ = LeagueScorePlate;
                  break;
               case §^#<§:
                  _loc1_ = § !1§;
                  break;
               case §4!y§:
                  _loc1_ = §[$$§;
            }
         }
         if(!_loc1_)
         {
            §^"t§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§8#9§ ? Object(this.§8#9§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§8#9§)
            {
               this.§[$!§(removeChild(this.§8#9§) as §2!$§);
            }
            this.§8#9§ = addChild(this.§>#N§(_loc1_)) as §2!$§;
            this.§8#9§.brandThePlate();
         }
         this.§8#9§.data = this.§!#x§;
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
            this.§<"E§();
         }
      }
      
      public function get §!#x§() : §0!u§
      {
         return data as §0!u§;
      }
      
      public function get §!!y§() : §2!$§
      {
         return this.§8#9§;
      }
   }
}
