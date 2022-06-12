package §=§#0
{
   import §!#C§.§ "q§;
   import §!#C§.§#"E§;
   import §!#C§.§0#;§;
   import §!#C§.§3" §;
   import §!#C§.§4"p§;
   import §!#C§.§8##§;
   import §!#C§.§;!$§;
   import §!#C§.§;s§;
   import §!#C§.§[§;
   import §1#v§.§;!Y§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §5$9§ extends §>!Y§
   {
      
      public static var §3"P§:String;
      
      public static var §-#Z§:Dictionary = new Dictionary();
       
      
      private var §2!N§:Loader;
      
      private var §4"-§:§ #i§;
      
      public function §5$9§()
      {
         super();
      }
      
      private function §9$,§(param1:Class) : § #i§
      {
         if(!§-#Z§[param1])
         {
            §-#Z§[param1] = [];
         }
         var _loc2_:Array = §-#Z§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §#$8§(param1:§ #i§) : void
      {
         var _loc2_:Class = Object(this.§4"-§).constructor;
         if(!§-#Z§[_loc2_])
         {
            §-#Z§[_loc2_] = [];
         }
         §-#Z§[_loc2_].push(param1);
      }
      
      private function §,"g§() : void
      {
         var _loc1_:Class = null;
         if(this.§%!y§)
         {
            switch(Object(this.§%!y§).constructor)
            {
               case §;!$§:
                  _loc1_ = §!"X§;
                  break;
               case §#"E§:
                  _loc1_ = §;X§;
                  break;
               case §8##§:
                  _loc1_ = § h§;
                  break;
               case §3" §:
                  _loc1_ = §<#u§;
                  break;
               case §4"p§:
                  _loc1_ = §^"Q§;
                  break;
               case §[#8§:
                  _loc1_ = LeagueScorePlate;
                  break;
               case §;s§:
                  _loc1_ = §9#$§;
                  break;
               case § "q§:
                  _loc1_ = §5#c§;
            }
         }
         if(!_loc1_)
         {
            §;!Y§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§4"-§ ? Object(this.§4"-§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§4"-§)
            {
               this.§#$8§(removeChild(this.§4"-§) as § #i§);
            }
            this.§4"-§ = addChild(this.§9$,§(_loc1_)) as § #i§;
            this.§4"-§.brandThePlate();
         }
         this.§4"-§.data = this.§%!y§;
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
            this.§,"g§();
         }
      }
      
      public function get §%!y§() : §0#;§
      {
         return data as §0#;§;
      }
      
      public function get §'#Z§() : § #i§
      {
         return this.§4"-§;
      }
   }
}
